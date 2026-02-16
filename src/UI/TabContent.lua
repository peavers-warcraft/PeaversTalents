local _, addon = ...
local Utils = addon.Utils
local TabContent = addon.TabContent or {}
addon.TabContent = TabContent

function TabContent.CreateEditBox(parent, name)
	local editBox = CreateFrame("EditBox", name, parent, "InputBoxTemplate")
	editBox:SetSize(380, 32)
	editBox:SetAutoFocus(false)
	editBox:SetFontObject(ChatFontNormal)
	editBox:EnableMouse(true)
	return editBox
end

-- Configuration for Archon tab sections
local TAB_CONFIG = {
	sections = {
		{
			name = "Mythic+",
			dropdownInitializer = "InitializeArchonMythicDropdown",
			editBoxPrefix = "archonMythic",
			source = "archon",
			category = "mythic"
		},
		{
			name = "Heroic Raid",
			dropdownInitializer = "InitializeArchonHeroicRaidDropdown",
			editBoxPrefix = "archonHeroicRaid",
			source = "archon",
			category = "heroic_raid"
		},
		{
			name = "Mythic Raid",
			dropdownInitializer = "InitializeArchonMythicRaidDropdown",
			editBoxPrefix = "archonMythicRaid",
			source = "archon",
			category = "mythic_raid"
		}
	}
}

-- Generic function to create a section (Mythic+, Raid, or Misc)
local function CreateSection(dialog, tab, section, prevElement, isFirst)
	local label = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	if isFirst then
		label:SetPoint("TOPLEFT", addon.Config.DIALOG.PADDING.SIDE, -10)
	else
		label:SetPoint("TOPLEFT", prevElement, "BOTTOMLEFT", -195, -addon.Config.DIALOG.SECTION_SPACING)
	end
	label:SetText(section.name)

	local descKey = section.name:lower():gsub("%+", "plus") .. "Desc"
	dialog[descKey] = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog[descKey]:SetPoint("TOPLEFT", label, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	-- Create the dropdown
	local dropdownName = "TalentExportDialog_" .. section.name:gsub("%+", "") .. "Dropdown"
	local dropdown = CreateFrame("Frame", dropdownName, tab, "UIDropDownMenuTemplate")
	dropdown:SetPoint("TOPLEFT", dialog[descKey], "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dropdown, 150)
	dialog[section.editBoxPrefix .. "Dropdown"] = dropdown

	-- Create the edit box
	local editBox = TabContent.CreateEditBox(tab, dropdownName:gsub("Dropdown", "Edit"))
	editBox:SetPoint("LEFT", dropdown, "RIGHT", 10, 2)
	dialog[section.editBoxPrefix .. "Edit"] = editBox

	-- Create "New!" label (hidden by default)
	local newLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	newLabel:SetText("|cFF00FF00New!|r")
	newLabel:SetPoint("BOTTOMLEFT", editBox, "TOPLEFT", 0, 4)
	newLabel:SetFont(newLabel:GetFont(), 12, "OUTLINE")
	newLabel:Hide()
	dialog[section.editBoxPrefix .. "NewLabel"] = newLabel

	-- Add focus handler to hide New label
	editBox:SetScript("OnEditFocusGained", function()
		if newLabel then
			newLabel:Hide()
			addon.LocalStorage.MarkAsSeen(section.source, section.category)
		end
	end)

	-- Set up the dropdown initialization
	local initFunc = function(frame, level)
		addon.DropdownManager[section.dropdownInitializer](frame, level, section.source, section.category, editBox, newLabel)
	end
	UIDropDownMenu_Initialize(dropdown, initFunc)

	return editBox
end

-- Create the Archon tab content
function TabContent.CreateArchonTab(dialog, tab)
	-- Check maintenance mode first
	if addon.Config.MAINTENANCE_MODE then
		local messageText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		messageText:SetPoint("CENTER", tab, "CENTER", 0, 20)
		messageText:SetText(addon.Config.MAINTENANCE_MESSAGE)
		messageText:SetJustifyH("CENTER")
		messageText:SetWidth(addon.Config.DIALOG.WIDTH - 60)
		return
	end

	local prevElement = nil
	for i, section in ipairs(TAB_CONFIG.sections) do
		prevElement = CreateSection(dialog, tab, section, prevElement, i == 1)
	end

	local instructionsText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab, "BOTTOM", 0, 55)
	instructionsText:SetText("Updated " .. Utils.GetFormattedUpdate("archon"))
	instructionsText:SetJustifyH("CENTER")
end

return TabContent
