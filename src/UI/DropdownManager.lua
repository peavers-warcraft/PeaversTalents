local _, addon = ...

local Utils = addon.Utils
local DataManager = addon.DataManager

local DropdownManager = addon.DropdownManager or {}
addon.DropdownManager = DropdownManager

local function InitializeDropdown(frame, level, source, category, editBox, newLabel)
	Utils.Debug("Initializing dropdown for source:", source, "category:", category)

	if not editBox then
		Utils.Debug("No editBox provided for dropdown")
		return
	end

	local info = UIDropDownMenu_CreateInfo()
	local classID, specID = Utils.GetPlayerClassAndSpec()
	local entries = DataManager.GetAvailableEntries(source, classID, specID, category)

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

-- Archon dropdown initializers
function DropdownManager.InitializeArchonMythicDropdown(frame, level)
	InitializeDropdown(frame, level, "archon", "mythic", addon.exportDialog.archonMythicEdit, addon.exportDialog.archonMythicNewLabel)
end

function DropdownManager.InitializeArchonHeroicRaidDropdown(frame, level)
	InitializeDropdown(frame, level, "archon", "heroic_raid", addon.exportDialog.archonHeroicRaidEdit, addon.exportDialog.archonHeroicRaidNewLabel)
end

function DropdownManager.InitializeArchonMythicRaidDropdown(frame, level)
	InitializeDropdown(frame, level, "archon", "mythic_raid", addon.exportDialog.archonMythicRaidEdit, addon.exportDialog.archonMythicRaidNewLabel)
end

return DropdownManager
