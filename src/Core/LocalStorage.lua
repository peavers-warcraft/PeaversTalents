local _, addon = ...

local Utils = addon.Utils
local LocalStorage = {}
addon.LocalStorage = LocalStorage

-- Get the current character's DB entry, creating it if needed
local function GetCharacterDB()
	if not PeaversTalentsDB then
		PeaversTalentsDB = {
			characters = {}
		}
	end

	local characterName = Utils.GetPlayerInfo()
	if not PeaversTalentsDB.characters[characterName] then
		PeaversTalentsDB.characters[characterName] = {
			specs = {}
		}
	end

	return PeaversTalentsDB.characters[characterName]
end

local function GetSelectionKey(source, category)
	if not source or not category then
		Utils.Debug("GetSelectionKey: Missing required parameters")
		return nil
	end
	return source .. "_" .. category
end

function LocalStorage.SaveSelection(source, category, buildKey, talentString)
	Utils.Debug("SaveSelection called with:", source, category, buildKey, "talent string:", talentString)

	if not source or not category or not buildKey or not talentString then
		Utils.Debug("SaveSelection: Missing required parameters")
		return false
	end

	local characterDB = GetCharacterDB()
	local _, specID = Utils.GetPlayerClassAndSpec()

	if not specID then
		Utils.Debug("SaveSelection: No spec ID found")
		return false
	end

	-- Initialize spec structure if needed
	if not characterDB.specs[specID] then
		characterDB.specs[specID] = {
			selections = {}
		}
	elseif not characterDB.specs[specID].selections then
		characterDB.specs[specID].selections = {}
	end

	-- Save selection with talent string
	local selectionKey = GetSelectionKey(source, category)
	if not selectionKey then
		return false
	end

	characterDB.specs[specID].selections[selectionKey] = {
		source = source,
		category = category,
		buildKey = buildKey,
		talentString = talentString
	}

	Utils.Debug("Successfully saved selection with talent string")
	return true
end

function LocalStorage.LoadSelection(source, category)
	if not source or not category then
		Utils.Debug("LoadSelection: Missing required parameters")
		return nil
	end

	local characterDB = GetCharacterDB()
	local _, specID = Utils.GetPlayerClassAndSpec()

	if not specID then
		Utils.Debug("LoadSelection: No spec ID found")
		return nil
	end

	local specData = characterDB.specs[specID]
	if not specData or not specData.selections then
		Utils.Debug("LoadSelection: No saved selections found for spec", specID)
		return nil
	end

	local selectionKey = GetSelectionKey(source, category)
	if not selectionKey then
		return nil
	end

	local savedSelection = specData.selections[selectionKey]
	if not savedSelection then
		Utils.Debug("LoadSelection: No saved selection found for", selectionKey)
		return nil
	end

	Utils.Debug("Loaded selection:", savedSelection.source, savedSelection.category, savedSelection.buildKey, savedSelection.talentString)
	return savedSelection.source, savedSelection.category, savedSelection.buildKey, savedSelection.talentString
end

function LocalStorage.MarkAsSeen(source, category)
	Utils.Debug("Marking as seen:", source, category)

	local characterDB = GetCharacterDB()
	local _, specID = Utils.GetPlayerClassAndSpec()

	if not specID or not source or not category then
		return false
	end

	local specData = characterDB.specs[specID]
	if not specData or not specData.selections then
		return false
	end

	local selectionKey = GetSelectionKey(source, category)
	if not selectionKey then
		return false
	end

	local savedSelection = specData.selections[selectionKey]
	if savedSelection then
		savedSelection.hasBeenSeen = true
		return true
	end

	return false
end

return LocalStorage
