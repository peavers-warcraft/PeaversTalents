local _, addon = ...

local Utils = addon.Utils
local DataManager = addon.DataManager

local DropdownManager = addon.DropdownManager or {}
addon.DropdownManager = DropdownManager

-- Renders a dropdown from a pre-built entries list. `category` is used only for
-- persistence (LoadSelection/SaveSelection), so a caller that merges several data
-- categories into one dropdown can pass a single synthetic category here.
local function RenderDropdown(frame, level, source, category, entries, editBox, newLabel)
	if not editBox then
		Utils.Debug("No editBox provided for dropdown")
		return
	end

	local info = UIDropDownMenu_CreateInfo()

	-- Hide new label by default
	if newLabel then newLabel:Hide() end

	-- Check if there's no data
	if #entries == 0 then
		info.text = "No data found"
		info.disabled = true
		info.notClickable = true
		UIDropDownMenu_AddButton(info, level)
		UIDropDownMenu_SetText(frame, "No data found")
		UIDropDownMenu_DisableDropDown(frame)
		return
	end

	-- Load saved selection for this source/category
	local savedSource, savedCategory, savedBuildKey, savedTalentString, savedHasBeenSeen = addon.LocalStorage.LoadSelection(source, category)
	Utils.Debug("Loaded selection:", savedSource, savedCategory, savedBuildKey)

	-- If we have a saved selection, find and apply it
	if savedBuildKey then
		Utils.Debug("Looking for saved build:", savedBuildKey)
		for _, entry in ipairs(entries) do
			if entry.key == savedBuildKey then
				Utils.Debug("Found saved build:", entry.data.label)
				editBox:SetText(entry.data.talentString or "")
				editBox:SetCursorPosition(0)
				UIDropDownMenu_SetText(frame, entry.data.label or tostring(savedBuildKey))

				-- Only show New label if talent strings are different and hasn't been seen
				if savedTalentString and entry.data.talentString and
					savedTalentString ~= entry.data.talentString and
					not savedHasBeenSeen then
					Utils.Debug("Talent strings different and not seen - showing New label")
					if newLabel then newLabel:Show() end
				end
				break
			end
		end
	else
		UIDropDownMenu_SetText(frame, "Select...")
	end

	info.func = function(self)
		local key = self.value
		Utils.Debug("User made dropdown selection - source:", source, "category:", category, "key:", key)

		for _, entry in ipairs(entries) do
			if entry.key == key then
				editBox:SetText(entry.data.talentString or "")
				editBox:SetCursorPosition(0)
				UIDropDownMenu_SetText(frame, entry.data.label or tostring(key))

				Utils.Debug("Saving selection to local storage")
				addon.LocalStorage.SaveSelection(source, category, key, entry.data.talentString)
				if newLabel then newLabel:Hide() end
				CloseDropDownMenus()
				break
			end
		end
	end

	for _, entry in ipairs(entries) do
		info.text = entry.data.label or entry.key
		info.value = entry.key
		info.disabled = false
		info.notClickable = false
		info.checked = (UIDropDownMenu_GetText(frame) == entry.data.label)
		UIDropDownMenu_AddButton(info, level)
	end

	UIDropDownMenu_EnableDropDown(frame)
end

-- Standard single-category dropdown: pulls entries for one source/category.
local function InitializeDropdown(frame, level, source, category, editBox, newLabel)
	Utils.Debug("Initializing dropdown for source:", source, "category:", category)
	local classID, specID = Utils.GetPlayerClassAndSpec()
	local entries = DataManager.GetAvailableEntries(source, classID, specID, category)
	RenderDropdown(frame, level, source, category, entries, editBox, newLabel)
end

-- Helper to safely get dialog elements
local function GetDialogElement(key)
	if addon.exportDialog then
		return addon.exportDialog[key]
	end
	return nil
end

-- wowcompare.io dropdown initializers
function DropdownManager.Initializewowcompare.ioMythicDropdown(frame, level, _, _, editBoxOverride, newLabelOverride)
	local editBox = editBoxOverride or GetDialogElement("wowcompare.ioMythicEdit")
	local newLabel = newLabelOverride or GetDialogElement("wowcompare.ioMythicNewLabel")
	InitializeDropdown(frame, level, "top-players", "mythic", editBox, newLabel)
end

function DropdownManager.Initializewowcompare.ioNormalRaidDropdown(frame, level, _, _, editBoxOverride, newLabelOverride)
	local editBox = editBoxOverride or GetDialogElement("wowcompare.ioNormalRaidEdit")
	local newLabel = newLabelOverride or GetDialogElement("wowcompare.ioNormalRaidNewLabel")
	InitializeDropdown(frame, level, "top-players", "normal_raid", editBox, newLabel)
end

function DropdownManager.Initializewowcompare.ioHeroicRaidDropdown(frame, level, _, _, editBoxOverride, newLabelOverride)
	local editBox = editBoxOverride or GetDialogElement("wowcompare.ioHeroicRaidEdit")
	local newLabel = newLabelOverride or GetDialogElement("wowcompare.ioHeroicRaidNewLabel")
	InitializeDropdown(frame, level, "top-players", "heroic_raid", editBox, newLabel)
end

function DropdownManager.Initializewowcompare.ioMythicRaidDropdown(frame, level, _, _, editBoxOverride, newLabelOverride)
	local editBox = editBoxOverride or GetDialogElement("wowcompare.ioMythicRaidEdit")
	local newLabel = newLabelOverride or GetDialogElement("wowcompare.ioMythicRaidNewLabel")
	InitializeDropdown(frame, level, "top-players", "mythic_raid", editBox, newLabel)
end

-- Sporefall is a one-off raid with a single boss, so its three difficulties are
-- merged into one dropdown labelled by difficulty rather than three separate rows.
local SPOREFALL_DIFFICULTIES = {
	{ category = "sporefall_normal", label = "Normal" },
	{ category = "sporefall_heroic", label = "Heroic" },
	{ category = "sporefall_mythic", label = "Mythic" },
}

function DropdownManager.InitializeTopPlayersSporefallDropdown(frame, level, _, _, editBoxOverride, newLabelOverride)
	local editBox = editBoxOverride or GetDialogElement("wowcompare.ioSporefallEdit")
	local newLabel = newLabelOverride or GetDialogElement("wowcompare.ioSporefallNewLabel")

	local classID, specID = Utils.GetPlayerClassAndSpec()

	local entries = {}
	for _, diff in ipairs(SPOREFALL_DIFFICULTIES) do
		local diffEntries = DataManager.GetAvailableEntries("top-players", classID, specID, diff.category)
		for _, entry in ipairs(diffEntries) do
			-- One boss per difficulty today; if Sporefall ever gains more, keep the
			-- difficulty grouping but disambiguate by boss name.
			local label = diff.label
			if #diffEntries > 1 then
				label = diff.label .. " - " .. (entry.data.label or tostring(entry.key))
			end
			table.insert(entries, {
				key = diff.category .. ":" .. tostring(entry.key),
				data = {
					label = label,
					talentString = entry.data.talentString,
					category = "sporefall",
				},
			})
		end
	end

	-- Persist under a single synthetic "sporefall" category (see RenderDropdown).
	RenderDropdown(frame, level, "top-players", "sporefall", entries, editBox, newLabel)
end

-- most-popular dropdown initializers
function DropdownManager.Initializemost-popularMythicDropdown(frame, level)
	InitializeDropdown(frame, level, "most-popular", "mythic", addon.exportDialog.most-popularMythicEdit, addon.exportDialog.most-popularMythicNewLabel)
end

function DropdownManager.Initializemost-popularRaidDropdown(frame, level)
	InitializeDropdown(frame, level, "most-popular", "raid", addon.exportDialog.most-popularRaidEdit, addon.exportDialog.most-popularRaidNewLabel)
end

function DropdownManager.Initializemost-popularMiscDropdown(frame, level)
	InitializeDropdown(frame, level, "most-popular", "misc", addon.exportDialog.most-popularMiscEdit, addon.exportDialog.most-popularMiscNewLabel)
end

return DropdownManager
