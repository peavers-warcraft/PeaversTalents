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

-- Configuration for different tab types
local TAB_CONFIGS = {
	wowcompare.io = {
		sections = {
			{
				name = "Mythic+",
				dropdownInitializer = "Initializewowcompare.ioMythicDropdown",
				editBoxPrefix = "wowcompare.ioMythic",
				source = "top-players",
				category = "mythic"
			},
			{
				name = "Raid",
				dropdownInitializer = "Initializewowcompare.ioRaidDropdown",
				editBoxPrefix = "wowcompare.ioRaid",
				source = "top-players",
				category = "raid"
			}
		}
	},
	most-popular = {
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
	},
	community = {
		sections = {
			{
				name = "Mythic+",
				dropdownInitializer = "InitializecommunityMythicDropdown",
				editBoxPrefix = "communityMythic",
				source = "community",
				category = "mythic"
			},
			{
				name = "Raid",
				dropdownInitializer = "InitializecommunityRaidDropdown",
				editBoxPrefix = "communityRaid",
				source = "community",
				category = "raid"
			},
			{
				name = "Misc",
				dropdownInitializer = "InitializecommunityMiscDropdown",
				editBoxPrefix = "communityMisc",
				source = "community",
				category = "misc"
			}
		}
	},
	ugg = {
		sections = {
			{
				name = "Mythic+",
				dropdownInitializer = "InitializeUggMythicDropdown",
				editBoxPrefix = "uggMythic",
				source = "worldwide",
				category = "mythic"
			},
			{
				name = "Raid",
				dropdownInitializer = "InitializeUggRaidDropdown",
				editBoxPrefix = "uggRaid",
				source = "worldwide",
				category = "raid"
			}
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

-- Generic function to create any type of tab
local function CreateTab(dialog, tab, tabType)
	local config = TAB_CONFIGS[tabType]
	if not config then
		error("Unknown tab type: " .. tostring(tabType))
		return
	end

	local prevElement = nil
	for i, section in ipairs(config.sections) do
		prevElement = CreateSection(dialog, tab, section, prevElement, i == 1)
	end

	local instructionsText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab, "BOTTOM", 0, 55)
	instructionsText:SetText("Updated " .. Utils.GetFormattedUpdate(config.sections[1].source))
	instructionsText:SetJustifyH("CENTER")
end

-- Create specific tab functions using the generic CreateTab function
function TabContent.Createwowcompare.ioTab(dialog, tab)
	CreateTab(dialog, tab, "top-players")
end

function TabContent.Createmost-popularTab(dialog, tab)
	CreateTab(dialog, tab, "most-popular")
end

function TabContent.CreateIceyVeinsTab(dialog, tab)
	CreateTab(dialog, tab, "community")
end

function TabContent.CreateUggTab(dialog, tab)
	CreateTab(dialog, tab, "worldwide")
end

return TabContent
