local addonName, addon = ...

addon.Utils = addon.Utils or {}

function addon.Utils.GetPlayerInfo()
	local _, _, classID = UnitClass("player")
	return nil, nil, classID
end

local DEBUG_ENABLED = false

-- Constants
local DIALOG_WIDTH = 600
local DIALOG_HEIGHT = 200
local TITLE_HEIGHT = 24
local IMPORT_BUTTON_WIDTH = 100
local IMPORT_BUTTON_HEIGHT = 22
local LABEL_PADDING = 2
local SIDE_PADDING = 15

-- Local references
local talentFrame
local isTWW = select(4, GetBuildInfo()) >= 110000
local talentUI = isTWW and "Blizzard_PlayerSpells" or "Blizzard_ClassTalentUI"

-- Debug function
local function Debug(...)
	if DEBUG_ENABLED then
		print("|cFF00FF00[TalentDebug]|r", ...)
	end
end

-- Helper Functions
local function GetPlayerClassAndSpec()
	local _, _, playerClassID = addon.Utils.GetPlayerInfo()
	local currentSpecIndex = GetSpecialization()
	local specID = currentSpecIndex and GetSpecializationInfo(currentSpecIndex)

	Debug("Class ID:", playerClassID, "Spec ID:", specID)
	return playerClassID, specID
end

local function GetAvailableDungeons(classID, specID)
	Debug("Getting dungeons for", classID, specID)

	local dungeons = {}
	if not addon.talentData or not classID or not specID then
		Debug("Missing required data:", not addon.talentData, not classID, not specID)
		return dungeons
	end

	local classTable = addon.talentData[classID]
	if not classTable or not classTable.specs then
		Debug("No class table or specs found")
		return dungeons
	end

	local specTable = classTable.specs[specID]
	if not specTable then
		Debug("No spec table found")
		return dungeons
	end

	if specTable["all-dungeons"] then
		table.insert(dungeons, {
			key = "all-dungeons",
			data = specTable["all-dungeons"],
		})
	end

	-- Then add all other dungeons in a separate table for sorting
	local otherDungeons = {}
	for dungeonKey, dungeonData in pairs(specTable) do
		if dungeonKey ~= "all-dungeons" then
			table.insert(otherDungeons, {
				key = dungeonKey,
				data = dungeonData,
			})
		end
	end

	-- Sort other dungeons by label
	table.sort(otherDungeons, function(a, b)
		return (a.data.label or a.key) < (b.data.label or b.key)
	end)

	-- Add sorted dungeons to main table
	for _, dungeon in ipairs(otherDungeons) do
		table.insert(dungeons, dungeon)
	end

	return dungeons
end

-- Initialize the dropdown menu
local function InitializeDungeonDropdown(self, level)
	local info = UIDropDownMenu_CreateInfo()
	info.func = function(button)
		local dungeonKey = button.value
		local classID, specID = GetPlayerClassAndSpec()

		Debug("Selected dungeon:", dungeonKey)

		if addon.talentData[classID] and
			addon.talentData[classID].specs and
			addon.talentData[classID].specs[specID] then
			local dungeonData = addon.talentData[classID].specs[specID][dungeonKey]
			if dungeonData then
				addon.exportDialog.mplusEdit:SetText(dungeonData.talentString or "")
				addon.exportDialog.mplusEdit:SetCursorPosition(0)
				UIDropDownMenu_SetText(addon.exportDialog.mplusDropdown, dungeonData.label or dungeonKey)
				Debug("Set talent string:", dungeonData.talentString)
			end
		end
	end

	local classID, specID = GetPlayerClassAndSpec()
	local dungeons = GetAvailableDungeons(classID, specID)

	for _, entry in ipairs(dungeons) do
		info.text = entry.data.label or entry.key
		info.value = entry.key
		info.checked = (UIDropDownMenu_GetText(self) == info.text)
		UIDropDownMenu_AddButton(info, level)
		Debug("Added dropdown option:", info.text)
	end
end

-- Create the export dialog
local function CreateExportDialog()
	local dialog = CreateFrame("Frame", "TalentExportDialog", UIParent, "DefaultPanelTemplate")
	addon.exportDialog = dialog

	-- Basic frame setup
	dialog:SetSize(DIALOG_WIDTH, DIALOG_HEIGHT)
	dialog:SetPoint("CENTER")
	dialog:SetFrameStrata("DIALOG")
	dialog:SetFrameLevel(100)

	-- Title background
	dialog.TitleBg = CreateFrame("Frame", nil, dialog)
	dialog.TitleBg:SetPoint("TOPLEFT", 0, 0)
	dialog.TitleBg:SetPoint("TOPRIGHT", 0, 0)
	dialog.TitleBg:SetHeight(TITLE_HEIGHT)
	dialog.TitleBg:SetFrameLevel(dialog:GetFrameLevel() + 1)

	-- Close button
	dialog.CloseButton = CreateFrame("Button", nil, dialog, "UIPanelCloseButtonNoScripts")
	dialog.CloseButton:SetPoint("TOPRIGHT", dialog, "TOPRIGHT", 0, 0)
	dialog.CloseButton:SetFrameStrata("DIALOG")
	dialog.CloseButton:SetFrameLevel(dialog:GetFrameLevel() + 1000)
	dialog.CloseButton:Raise()
	dialog.CloseButton:SetScript("OnClick", function()
		dialog:Hide()
	end)

	-- Mythic+ Label
	local mplusLabel = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	mplusLabel:SetPoint("TOPLEFT", SIDE_PADDING, -35)
	mplusLabel:SetText("Mythic+")

	-- Mythic+ Description
	dialog.mplusDesc = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.mplusDesc:SetPoint("TOPLEFT", mplusLabel, "BOTTOMLEFT", 0, -LABEL_PADDING)

	-- Create dropdown
	dialog.mplusDropdown = CreateFrame("Frame", "TalentExportDialog_MplusDropdown", dialog, "UIDropDownMenuTemplate")
	dialog.mplusDropdown:SetPoint("TOPLEFT", dialog.mplusDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.mplusDropdown, 150)
	UIDropDownMenu_Initialize(dialog.mplusDropdown, InitializeDungeonDropdown)

	-- Create editbox
	dialog.mplusEdit = CreateFrame("EditBox", "TalentExportDialog_MplusEdit", dialog, "InputBoxTemplate")
	dialog.mplusEdit:SetSize(380, 32)
	dialog.mplusEdit:SetPoint("LEFT", dialog.mplusDropdown, "RIGHT", 10, 2)
	dialog.mplusEdit:SetAutoFocus(false)
	dialog.mplusEdit:SetFontObject(ChatFontNormal)

	-- Make the frame movable
	dialog:SetMovable(true)
	dialog:EnableMouse(true)
	dialog:RegisterForDrag("LeftButton")
	dialog:SetScript("OnDragStart", dialog.StartMoving)
	dialog:SetScript("OnDragStop", dialog.StopMovingOrSizing)

	-- Register for special frames (allows Escape key to close)
	tinsert(UISpecialFrames, dialog:GetName())

	dialog:SetScript("OnShow", function()
		Debug("Dialog shown")
		local classID, specID = GetPlayerClassAndSpec()
		Debug("Current class/spec:", classID, specID)

		if addon.talentData[classID] and
			addon.talentData[classID].specs and
			addon.talentData[classID].specs[specID] then
			Debug("Found talent data for class/spec")

			local allDungeonsData = addon.talentData[classID].specs[specID]["all-dungeons"]
			if allDungeonsData then
				dialog.mplusEdit:SetText(allDungeonsData.talentString or "")
				UIDropDownMenu_SetText(dialog.mplusDropdown, allDungeonsData.label or "All Dungeons")
			end
		else
			Debug("No talent data found for class/spec")
		end

		if not dialog.hideHooked and talentFrame then
			talentFrame:HookScript("OnHide", function()
				dialog:Hide()
			end)
			dialog.hideHooked = true
		end
	end)

	-- Reset position when hidden
	dialog:SetScript("OnHide", function()
		dialog:ClearAllPoints()
		dialog:SetPoint("CENTER")
	end)

	return dialog
end

-- Show the export dialog
function addon.ShowExportDialog()
	Debug("Showing export dialog")
	local dialog = addon.exportDialog or CreateExportDialog()
	dialog:Show()
end

-- Event frame for initialization
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

eventFrame:SetScript("OnEvent", function(self, event, arg1)
	if event == "ADDON_LOADED" then
		if arg1 == talentUI then
			Debug("Talent UI loaded")
			talentFrame = isTWW and PlayerSpellsFrame.TalentsFrame or ClassTalentFrame.TalentsTab
			-- Create export button
			local exportButton = CreateFrame("Button", "TalentExportButton", talentFrame, "UIPanelButtonTemplate")
			exportButton:SetSize(IMPORT_BUTTON_WIDTH, IMPORT_BUTTON_HEIGHT)
			exportButton:SetText("Builds")
			exportButton:SetPoint("LEFT", talentFrame.SearchBox, "RIGHT", 10, 0)
			exportButton:SetScript("OnClick", addon.ShowExportDialog)
			Debug("Export button created")
		end
	elseif event == "PLAYER_ENTERING_WORLD" then
		Debug("Player entering world")
		if not C_AddOns.IsAddOnLoaded(talentUI) then
			UIParentLoadAddOn(talentUI)
		end
	end
end)
