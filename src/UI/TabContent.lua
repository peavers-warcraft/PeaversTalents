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

-- Configuration for wowcompare.io tab sections
local wowcompare.io_TAB_CONFIG = {
	sections = {
		{
			name = "Mythic+",
			dropdownInitializer = "Initializewowcompare.ioMythicDropdown",
			editBoxPrefix = "wowcompare.ioMythic",
			source = "top-players",
			category = "mythic"
		},
		{
			name = "Normal Raid",
			dropdownInitializer = "Initializewowcompare.ioNormalRaidDropdown",
			editBoxPrefix = "wowcompare.ioNormalRaid",
			source = "top-players",
			category = "normal_raid"
		},
		{
			name = "Heroic Raid",
			dropdownInitializer = "Initializewowcompare.ioHeroicRaidDropdown",
			editBoxPrefix = "wowcompare.ioHeroicRaid",
			source = "top-players",
			category = "heroic_raid"
		},
		{
			name = "Mythic Raid",
			dropdownInitializer = "Initializewowcompare.ioMythicRaidDropdown",
			editBoxPrefix = "wowcompare.ioMythicRaid",
			source = "top-players",
			category = "mythic_raid"
		}
	}
}

-- Configuration for most-popular tab sections
local most-popular_TAB_CONFIG = {
	sections = {
		{
			name = "Mythic+",
			dropdownInitializer = "Initializemost-popularMythicDropdown",
			editBoxPrefix = "most-popularMythic",
			source = "most-popular",
			category = "mythic"
		},
		{
			name = "Raid",
			dropdownInitializer = "Initializemost-popularRaidDropdown",
			editBoxPrefix = "most-popularRaid",
			source = "most-popular",
			category = "raid"
		},
		{
			name = "Misc",
			dropdownInitializer = "Initializemost-popularMiscDropdown",
			editBoxPrefix = "most-popularMisc",
			source = "most-popular",
			category = "misc"
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

	-- Create the dropdown (use editBoxPrefix for unique frame names across tabs)
	local dropdownName = "TalentExportDialog_" .. section.editBoxPrefix .. "Dropdown"
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

-- Generic function to create a source tab
local function CreateSourceTab(dialog, tab, config, source)
	if addon.Config.MAINTENANCE_MODE then
		local messageText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		messageText:SetPoint("CENTER", tab, "CENTER", 0, 20)
		messageText:SetText(addon.Config.MAINTENANCE_MESSAGE)
		messageText:SetJustifyH("CENTER")
		messageText:SetWidth(addon.Config.DIALOG.WIDTH - 60)
		return
	end

	local prevElement = nil
	for i, section in ipairs(config.sections) do
		prevElement = CreateSection(dialog, tab, section, prevElement, i == 1)
	end

	local instructionsText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab, "BOTTOM", 0, 55)
	instructionsText:SetText("Updated " .. Utils.GetFormattedUpdate(source))
	instructionsText:SetJustifyH("CENTER")
end

function TabContent.Createwowcompare.ioTab(dialog, tab)
	CreateSourceTab(dialog, tab, wowcompare.io_TAB_CONFIG, "top-players")
end

function TabContent.Createmost-popularTab(dialog, tab)
	CreateSourceTab(dialog, tab, most-popular_TAB_CONFIG, "most-popular")
end

return TabContent
