local _, addon = ...

local Utils = addon.Utils
local ApplyMenu = {}
addon.ApplyMenu = ApplyMenu

-- Selecting the box's text is the only "copy" a WoW addon can offer: there is no
-- clipboard API, so the best we can do is tee it up for the user's Ctrl+C.
local function SelectImportString(editBox)
	if not editBox then return end
	editBox:SetFocus()
	editBox:HighlightText()
end

local function ApplyBuild(talentString, buildLabel)
	local ok, err = addon.TalentImporter.Apply(talentString, buildLabel)
	if not ok then
		Utils.Print("|cffff4040Could not apply build:|r " .. tostring(err))
	end
end

-- Shared by both menu backends so the wording only lives in one place.
local function GetEntries(editBox, talentString, buildLabel)
	local blocker = addon.TalentImporter.GetApplyBlocker()

	return {
		{
			text = "Apply Loadout",
			tooltip = blocker or "Import this build and make it your active loadout.",
			disabled = blocker ~= nil,
			func = function() ApplyBuild(talentString, buildLabel) end,
		},
		{
			text = "Copy Import String",
			tooltip = "Select the string so you can copy it with Ctrl+C.",
			func = function() SelectImportString(editBox) end,
		},
	}
end

-- Retail 11.0+ menu API. Preferred: no taint, and it matches the rest of the UI.
local function ToggleModern(anchor, title, entries)
	MenuUtil.CreateContextMenu(anchor, function(_, rootDescription)
		if title then
			rootDescription:CreateTitle(title)
		end
		for _, entry in ipairs(entries) do
			local button = rootDescription:CreateButton(entry.text, entry.func)
			if entry.disabled and button.SetEnabled then
				button:SetEnabled(false)
			end
			if entry.tooltip and button.SetTooltip then
				button:SetTooltip(function(tooltip)
					GameTooltip_AddNormalLine(tooltip, entry.tooltip)
				end)
			end
		end
	end)
end

-- Fallback for any client without MenuUtil, using the same dropdown machinery
-- the build dropdowns already rely on.
local menuFrame
local function ToggleLegacy(anchor, title, entries)
	if not menuFrame then
		menuFrame = CreateFrame("Frame", "PeaversTalentsApplyMenu", UIParent, "UIDropDownMenuTemplate")
	end

	UIDropDownMenu_Initialize(menuFrame, function(_, level)
		if not level then return end

		if title then
			local header = UIDropDownMenu_CreateInfo()
			header.text = title
			header.isTitle = true
			header.notCheckable = true
			UIDropDownMenu_AddButton(header, level)
		end

		for _, entry in ipairs(entries) do
			local info = UIDropDownMenu_CreateInfo()
			info.text = entry.text
			info.notCheckable = true
			info.disabled = entry.disabled
			info.tooltipTitle = entry.text
			info.tooltipText = entry.tooltip
			info.tooltipOnButton = true
			info.func = function()
				entry.func()
				CloseDropDownMenus()
			end
			UIDropDownMenu_AddButton(info, level)
		end
	end, "MENU")

	ToggleDropDownMenu(1, nil, menuFrame, anchor, 0, 0)
end

---Opens the per-build action menu anchored to the arrow button.
---@param anchor table The arrow button the menu hangs off.
---@param talentString string The loadout import string for the selected build.
---@param buildLabel string|nil Display name of the build, used as the menu title.
function ApplyMenu.Toggle(anchor, talentString, buildLabel)
	if not talentString or talentString == "" then
		Utils.Debug("ApplyMenu.Toggle called with no talent string")
		return
	end

	-- The arrow always sits beside its edit box; it keeps a reference for us.
	local entries = GetEntries(anchor.editBox, talentString, buildLabel)

	if MenuUtil and MenuUtil.CreateContextMenu then
		ToggleModern(anchor, buildLabel, entries)
	else
		ToggleLegacy(anchor, buildLabel, entries)
	end
end

return ApplyMenu
