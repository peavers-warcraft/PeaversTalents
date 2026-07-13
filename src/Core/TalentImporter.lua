local _, addon = ...

local Utils = addon.Utils
local TalentImporter = {}
addon.TalentImporter = TalentImporter

-- Bit widths of the loadout export header. These mirror Blizzard's own encoder;
-- they are part of the wire format, not a choice we get to make.
local BIT_WIDTH_HEADER_VERSION = 8
local BIT_WIDTH_SPEC_ID = 16
local BIT_WIDTH_RANKS_PURCHASED = 6
local TREE_HASH_BYTES = 16

-- Every loadout we create carries this prefix so we can recognise our own and
-- recycle a single slot instead of eating into the player's loadout cap.
local LOADOUT_PREFIX = "Peavers: "
local MAX_LOADOUT_NAME = 31

-- Spell cast the client starts when talents are actually being changed. Seeing it
-- is our confirmation that a switch took, rather than silently doing nothing.
local CHANGING_TALENTS_SPELL_ID = 384255

local SWITCH_RETRIES = 6
local SWITCH_RETRY_DELAY = 0.5

-- How long to wait for the server to acknowledge the new loadout before giving up.
local CREATE_TIMEOUT = 5
-- Falling back to importing anyway if the delete is never confirmed; worst case the
-- import fails for lack of room and says so.
local DELETE_TIMEOUT = 2

local eventFrame = CreateFrame("Frame")
local pending = nil

-- The spec ID the loadout format encodes (e.g. 71 Arms), which is what the rest
-- of the addon already keys its build data on.
local function GetSpecID()
	local _, specID = Utils.GetPlayerClassAndSpec()
	return specID
end

--=============================================================================
-- Import string decoding
--
-- Blizzard's decoder lives on ClassTalentImportExportMixin, which only exists
-- once Blizzard_PlayerSpells is loaded, and reaching into that frame is the
-- known source of ADDON_ACTION_FORBIDDEN in talent addons. Decoding the stream
-- ourselves keeps this module free of any dependency on the talent UI.
--=============================================================================

local function ReadHeader(stream)
	local headerBits = BIT_WIDTH_HEADER_VERSION + BIT_WIDTH_SPEC_ID + (TREE_HASH_BYTES * 8)
	if stream:GetNumberOfBits() < headerBits then
		return false
	end

	local serializationVersion = stream:ExtractValue(BIT_WIDTH_HEADER_VERSION)
	local specID = stream:ExtractValue(BIT_WIDTH_SPEC_ID)

	local treeHash = {}
	for i = 1, TREE_HASH_BYTES do
		treeHash[i] = stream:ExtractValue(8)
	end

	return true, serializationVersion, specID, treeHash
end

local function ReadContent(stream, treeID)
	local results = {}
	local treeNodes = C_Traits.GetTreeNodes(treeID)

	for i in ipairs(treeNodes) do
		local result = {
			isNodeSelected = false,
			isNodeGranted = false,
			isPartiallyRanked = false,
			partialRanksPurchased = 0,
			isChoiceNode = false,
			choiceNodeSelection = 1,
		}

		local isNodeSelected = stream:ExtractValue(1) == 1
		if isNodeSelected then
			local isNodePurchased = stream:ExtractValue(1) == 1
			result.isNodeSelected = true
			result.isNodeGranted = not isNodePurchased

			if isNodePurchased then
				result.isPartiallyRanked = stream:ExtractValue(1) == 1
				if result.isPartiallyRanked then
					result.partialRanksPurchased = stream:ExtractValue(BIT_WIDTH_RANKS_PURCHASED)
				end

				result.isChoiceNode = stream:ExtractValue(1) == 1
				if result.isChoiceNode then
					-- Encoded zero-based; entryIDs is a 1-based Lua array.
					result.choiceNodeSelection = stream:ExtractValue(2) + 1
				end
			end
		end

		results[i] = result
	end

	return results
end

local function AddSingleNodeEntry(results, treeNodeInfo, indexInfo)
	if not treeNodeInfo or not indexInfo or not indexInfo.isNodeSelected then
		return
	end

	local result = {
		nodeID = treeNodeInfo.ID,
		-- The stream only records that a node was granted, never how many ranks,
		-- so a granted node is always worth exactly one rank.
		ranksGranted = indexInfo.isNodeGranted and 1 or 0,
		ranksPurchased = 0,
	}

	if not indexInfo.isNodeGranted then
		result.ranksPurchased = indexInfo.isPartiallyRanked and indexInfo.partialRanksPurchased or
			treeNodeInfo.maxRanks
	end

	if indexInfo.isChoiceNode then
		result.selectionEntryID = treeNodeInfo.entryIDs[indexInfo.choiceNodeSelection]
	elseif treeNodeInfo.activeEntry then
		result.selectionEntryID = treeNodeInfo.activeEntry.entryID
	end
	result.selectionEntryID = result.selectionEntryID or treeNodeInfo.entryIDs[1]

	-- No entry ID at all means the string disagrees with the live tree.
	if result.selectionEntryID then
		table.insert(results, result)
	end
end

-- Tiered nodes spread one rank total across several entryIDs, each with its own
-- maxRanks, so ranks are poured into entries in order until they run out.
local function AddTieredNodeEntry(results, configID, treeNodeInfo, indexInfo)
	if not treeNodeInfo or not indexInfo or not indexInfo.isNodeSelected then
		return
	end

	local remainingRanks = 0
	if not indexInfo.isNodeGranted then
		remainingRanks = indexInfo.isPartiallyRanked and indexInfo.partialRanksPurchased or treeNodeInfo.maxRanks
	end

	for index, entryID in ipairs(treeNodeInfo.entryIDs) do
		local entryInfo = C_Traits.GetEntryInfo(configID, entryID)
		if entryInfo then
			local ranksForThisEntry = math.min(remainingRanks, entryInfo.maxRanks)
			-- A granted rank always lands on the first entry.
			local isGranted = indexInfo.isNodeGranted and index == 1

			if ranksForThisEntry > 0 or isGranted then
				table.insert(results, {
					nodeID = treeNodeInfo.ID,
					ranksGranted = isGranted and 1 or 0,
					ranksPurchased = ranksForThisEntry,
					selectionEntryID = entryID,
				})
			end

			remainingRanks = remainingRanks - ranksForThisEntry
		end
	end
end

local function BuildEntryInfo(configID, treeID, loadoutContent)
	local results = {}
	local treeNodes = C_Traits.GetTreeNodes(treeID)

	for index, nodeID in ipairs(treeNodes) do
		local treeNodeInfo = C_Traits.GetNodeInfo(configID, nodeID)
		if treeNodeInfo then
			if treeNodeInfo.type == Enum.TraitNodeType.Tiered then
				AddTieredNodeEntry(results, configID, treeNodeInfo, loadoutContent[index])
			else
				AddSingleNodeEntry(results, treeNodeInfo, loadoutContent[index])
			end
		end
	end

	return results
end

local function IsHashEmpty(treeHash)
	for _, value in ipairs(treeHash) do
		if value ~= 0 then
			return false
		end
	end
	return true
end

local function HashEquals(a, b)
	if #a ~= #b then
		return false
	end
	for i = 1, #a do
		if a[i] ~= b[i] then
			return false
		end
	end
	return true
end

--=============================================================================
-- Loadout bookkeeping
--=============================================================================

-- most-popular labels run long ("Conduit Of The Celestials | Raid - Single Target"), so
-- most names need eliding. Only the tail is lost: the prefix that marks the loadout
-- as ours always survives, so FindOwnedConfig keeps working on a truncated name.
local function BuildLoadoutName(buildLabel)
	local name = LOADOUT_PREFIX .. (buildLabel or "Build")
	if #name > MAX_LOADOUT_NAME then
		name = name:sub(1, MAX_LOADOUT_NAME - 3):gsub("%s+$", "") .. "..."
	end
	return name
end

local function IsOwnedByUs(name)
	return type(name) == "string" and name:sub(1, #LOADOUT_PREFIX) == LOADOUT_PREFIX
end

---Returns the configID of the loadout this addon previously created for `specID`.
---Only one is ever kept, so we recycle it rather than consuming loadout slots.
local function FindOwnedConfig(specID)
	local configIDs = C_ClassTalents.GetConfigIDsBySpecID(specID)
	if not configIDs then
		return nil
	end

	for _, configID in ipairs(configIDs) do
		local info = C_Traits.GetConfigInfo(configID)
		if info and IsOwnedByUs(info.name) then
			return configID, info.name
		end
	end

	return nil
end

--=============================================================================
-- Activation
--=============================================================================

-- SwitchToLoadoutBy* bounces through the C layer and back into Blizzard's own
-- untainted event handler, which both loads the talent UI on demand and avoids
-- the taint we'd pick up driving PlayerSpellsFrame ourselves. It landed in
-- 12.0.5, so older clients fall back to LoadConfig.
local function SwitchOnce(configID, name)
	if C_ClassTalents.SwitchToLoadoutByName then
		return C_ClassTalents.SwitchToLoadoutByName(name)
	end

	if C_ClassTalents.SwitchToLoadoutByIndex then
		local configIDs = C_ClassTalents.GetConfigIDsBySpecID(GetSpecID())
		for index, id in ipairs(configIDs or {}) do
			if id == configID then
				return C_ClassTalents.SwitchToLoadoutByIndex(index)
			end
		end
		return false
	end

	local specID = GetSpecID()
	C_ClassTalents.UpdateLastSelectedSavedConfigID(specID, configID)
	local result = C_ClassTalents.LoadConfig(configID, true)
	return result ~= Enum.LoadConfigResult.Error
end

local function IsConfigActive(configID)
	if C_ClassTalents.GetActiveConfigID() == configID then
		return true
	end
	local specID = GetSpecID()
	return specID ~= nil and C_ClassTalents.GetLastSelectedSavedConfigID(specID) == configID
end

-- Every callback below is keyed on the operation it was started for, so a stale
-- timer from an abandoned import can never report on, or clobber, a newer one.
local function IsCurrent(op)
	return pending == op and not op.finished
end

local function Succeed(op)
	if not IsCurrent(op) then
		return
	end
	op.finished = true
	pending = nil
	Utils.Print("Applied |cff3abdf7" .. op.name .. "|r.")
end

local function Fail(op, message)
	if not IsCurrent(op) then
		return
	end
	op.finished = true
	pending = nil
	Utils.Print("|cffff4040" .. message .. "|r")
end

-- Switching can silently no-op, so retry a few times and treat either the
-- talent-change cast or the config going active as proof it took.
local function SwitchToLoadout(op, configID, attempt)
	if not IsCurrent(op) then
		return
	end

	SwitchOnce(configID, op.name)

	C_Timer.After(SWITCH_RETRY_DELAY, function()
		if not IsCurrent(op) then
			return
		end

		if IsConfigActive(configID) then
			Succeed(op)
		elseif attempt < SWITCH_RETRIES then
			SwitchToLoadout(op, configID, attempt + 1)
		else
			Fail(op, "Imported '" .. op.name ..
				"' but couldn't switch to it. Pick it from the loadout dropdown.")
		end
	end)
end

--=============================================================================
-- Import
--=============================================================================

---@return boolean ok, string|nil err
local function StartImport(op)
	if not IsCurrent(op) then
		return false
	end

	local success, importError =
		C_ClassTalents.ImportLoadout(op.activeConfigID, op.entries, op.name, op.talentString)
	if not success then
		return false, importError or "The game refused to import that build."
	end

	-- Creation is asynchronous; TRAIT_CONFIG_CREATED picks the job back up. Guard
	-- against a dropped event leaving us wedged and unable to apply anything else.
	C_Timer.After(CREATE_TIMEOUT, function()
		if IsCurrent(op) and not op.created then
			Fail(op, "Applying '" .. op.name .. "' timed out. Please try again.")
		end
	end)

	return true
end

local function ImportOrFail(op)
	local ok, err = StartImport(op)
	if not ok and err then
		Fail(op, err)
	end
end

--=============================================================================
-- Events
--=============================================================================

eventFrame:RegisterEvent("TRAIT_CONFIG_CREATED")
eventFrame:RegisterEvent("TRAIT_CONFIG_DELETED")
eventFrame:RegisterUnitEvent("UNIT_SPELLCAST_START", "player")

local handlers = {}

-- The old loadout has to go before the new one is created, or a player sitting on
-- their last free slot would have the import rejected for lack of room.
function handlers.TRAIT_CONFIG_DELETED(op, configID)
	if op.awaitingDeleteID and op.awaitingDeleteID == configID then
		op.awaitingDeleteID = nil
		ImportOrFail(op)
	end
end

function handlers.TRAIT_CONFIG_CREATED(op, configInfo)
	-- Still waiting on the delete means we haven't asked for an import yet, so a
	-- config appearing now belongs to someone else.
	if op.created or op.awaitingDeleteID then
		return
	end
	if not configInfo or configInfo.type ~= Enum.TraitConfigType.Combat then
		return
	end

	op.created = true
	local configID = configInfo.ID
	Utils.Debug("Loadout created:", configID, configInfo.name)

	-- The name we ask for does not reliably survive creation.
	if configInfo.name ~= op.name then
		C_ClassTalents.RenameConfig(configID, op.name)
	end

	-- Keep the player's existing action bars rather than stamping a blank set.
	C_ClassTalents.SetUsesSharedActionBars(configID, true)

	SwitchToLoadout(op, configID, 1)
end

function handlers.UNIT_SPELLCAST_START(op, _, _, spellID)
	-- The client only casts this once talents are genuinely being rewritten.
	if op.created and spellID == CHANGING_TALENTS_SPELL_ID then
		Succeed(op)
	end
end

eventFrame:SetScript("OnEvent", function(_, event, ...)
	local op = pending
	if not op or op.finished then
		return
	end

	local handler = handlers[event]
	if handler then
		handler(op, ...)
	end
end)

--=============================================================================
-- Public API
--=============================================================================

---Imports `talentString` as a saved loadout and switches the player to it.
---@param talentString string A Blizzard talent loadout export string.
---@param buildLabel string|nil Display name of the build, used to name the loadout.
---@return boolean ok, string|nil err
function TalentImporter.Apply(talentString, buildLabel)
	if type(talentString) ~= "string" or talentString == "" then
		return false, "No build selected."
	end

	if InCombatLockdown() then
		return false, "You can't change talents in combat."
	end

	if pending then
		return false, "Still applying the last build."
	end

	local canEdit, changeError = C_ClassTalents.CanEditTalents()
	if not canEdit then
		return false, changeError or "You can't change talents right now."
	end

	local activeConfigID = C_ClassTalents.GetActiveConfigID()
	if not activeConfigID then
		return false, "Your talents aren't ready yet. Try again in a moment."
	end

	-- Half-applied changes left over from the Blizzard UI wedge the import, so
	-- clear them before staging ours.
	if C_Traits.ConfigHasStagedChanges(activeConfigID) then
		C_Traits.RollbackConfig(activeConfigID)
	end

	local configInfo = C_Traits.GetConfigInfo(activeConfigID)
	local treeID = configInfo and configInfo.treeIDs and configInfo.treeIDs[1]
	if not treeID then
		return false, "Couldn't read your talent tree."
	end

	-- A truncated or corrupt string makes the stream reader run off the end, so
	-- decode defensively and treat any error as a bad string.
	local ok, headerValid, serializationVersion, specID, treeHash, loadoutContent = pcall(function()
		local stream = ExportUtil.MakeImportDataStream(talentString)
		local valid, version, spec, hash = ReadHeader(stream)
		if not valid then
			return false
		end
		return true, version, spec, hash, ReadContent(stream, treeID)
	end)

	if not ok or not headerValid then
		return false, "That build's import string is malformed."
	end

	if serializationVersion ~= C_Traits.GetLoadoutSerializationVersion() then
		return false, "That build is from an older game version and can no longer be applied."
	end

	local playerSpecID = GetSpecID()
	if specID ~= playerSpecID then
		return false, "That build is for a different specialization."
	end

	-- wowcompare.io and most-popular export with a zeroed hash; Blizzard treats that as an
	-- explicit opt-out of hash validation, so only check a hash that's actually set.
	if not IsHashEmpty(treeHash) and not HashEquals(treeHash, C_Traits.GetTreeHash(treeID)) then
		return false, "That build is out of date with the current talent tree."
	end

	local entries = BuildEntryInfo(activeConfigID, treeID, loadoutContent)
	if #entries == 0 then
		return false, "That build has no talents in it."
	end

	local name = BuildLoadoutName(buildLabel)
	local staleConfigID = FindOwnedConfig(playerSpecID)

	local op = {
		name = name,
		activeConfigID = activeConfigID,
		entries = entries,
		talentString = talentString,
		created = false,
		finished = false,
	}
	pending = op

	Utils.Debug("Import staged:", name, "entries:", #entries)

	-- Recycle the loadout we made last time rather than eating another slot. The
	-- delete has to land first, so the import resumes on TRAIT_CONFIG_DELETED.
	if staleConfigID then
		op.awaitingDeleteID = staleConfigID
		if C_ClassTalents.DeleteConfig(staleConfigID) then
			C_Timer.After(DELETE_TIMEOUT, function()
				if IsCurrent(op) and op.awaitingDeleteID then
					Utils.Debug("Delete event never arrived; importing anyway")
					op.awaitingDeleteID = nil
					ImportOrFail(op)
				end
			end)
			return true
		end
		-- Couldn't clear it, so fall through and try for a fresh slot instead.
		op.awaitingDeleteID = nil
	end

	if not C_ClassTalents.CanCreateNewConfig() then
		pending = nil
		return false, "No room for another loadout. Delete one in the talent UI and try again."
	end

	local ok2, err = StartImport(op)
	if not ok2 then
		pending = nil
		return false, err
	end

	return true
end

---Why the player can't apply a build right now, or nil if they can.
---@return string|nil reason
function TalentImporter.GetApplyBlocker()
	if pending then
		return "Still applying the last build."
	end
	if InCombatLockdown() then
		return "You can't change talents in combat."
	end

	local canEdit, changeError = C_ClassTalents.CanEditTalents()
	if not canEdit then
		return changeError or "You can't change talents right now."
	end
	if not C_ClassTalents.GetActiveConfigID() then
		return "Your talents aren't ready yet."
	end

	return nil
end

return TalentImporter
