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
local SECTION_SPACING = 20

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
	if not addon.dungeonTalents or not classID or not specID then
		Debug("Missing required data:", not addon.dungeonTalents, not classID, not specID)
		return dungeons
	end

	local classTable = addon.dungeonTalents[classID]
	if not classTable or not classTable.specs then
		Debug("No class table or specs found")
		return dungeons
	end

	local specTable = classTable.specs[specID]
	if not specTable then
		Debug("No spec table found")
		return dungeons
	end

	for dungeonKey, dungeonData in pairs(specTable) do
		if dungeonKey ~= "specs" then
			table.insert(dungeons, {
				key = dungeonKey,
				data = dungeonData,
			})
		end
	end

	-- Sort dungeons by label
	table.sort(dungeons, function(a, b)
		return (a.data.label or a.key) < (b.data.label or b.key)
	end)

	return dungeons
end

local function GetAvailableRaidBosses(classID, specID)
	Debug("Getting raid bosses for", classID, specID)

	local bosses = {}
	if not addon.raidTalents or not classID or not specID then
		Debug("Missing required data:", not addon.raidTalents, not classID, not specID)
		return bosses
	end

	local classTable = addon.raidTalents[classID]
	if not classTable or not classTable.specs then
		Debug("No class table or specs found")
		return bosses
	end

	local specTable = classTable.specs[specID]
	if not specTable then
		Debug("No spec table found")
		return bosses
	end

	for bossKey, bossData in pairs(specTable) do
		table.insert(bosses, {
			key = bossKey,
			data = bossData,
		})
	end

	-- Sort raid bosses by label
	table.sort(bosses, function(a, b)
		return (a.data.label or a.key) < (b.data.label or b.key)
	end)

	return bosses
end

local function InitializeDungeonDropdown(self, level)
	local info = UIDropDownMenu_CreateInfo()
	info.func = function(button)
		local dungeonKey = button.value
		local classID, specID = GetPlayerClassAndSpec()

		Debug("Selected dungeon:", dungeonKey)

		if addon.dungeonTalents[classID] and
			addon.dungeonTalents[classID].specs and
			addon.dungeonTalents[classID].specs[specID] then
			local dungeonData = addon.dungeonTalents[classID].specs[specID][dungeonKey]  -- Removed .activities
			if dungeonData then
				addon.exportDialog.mplusEdit:SetText(dungeonData.talentString or "")
				addon.exportDialog.mplusEdit:SetCursorPosition(0)
				UIDropDownMenu_SetText(addon.exportDialog.mplusDropdown, dungeonData.label or dungeonKey)
				Debug("Set dungeon talent string:", dungeonData.talentString)
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
	end
end

local function InitializeRaidDropdown(self, level)
	local info = UIDropDownMenu_CreateInfo()
	info.func = function(button)
		local bossKey = button.value
		local classID, specID = GetPlayerClassAndSpec()

		Debug("Selected raid boss:", bossKey)

		if addon.raidTalents[classID] and
			addon.raidTalents[classID].specs and
			addon.raidTalents[classID].specs[specID] then
			local bossData = addon.raidTalents[classID].specs[specID][bossKey]
			if bossData then
				addon.exportDialog.raidEdit:SetText(bossData.talentString or "")
				addon.exportDialog.raidEdit:SetCursorPosition(0)
				UIDropDownMenu_SetText(addon.exportDialog.raidDropdown, bossData.label or bossKey)
				Debug("Set raid talent string:", bossData.talentString)
			end
		end
	end

	local classID, specID = GetPlayerClassAndSpec()
	local bosses = GetAvailableRaidBosses(classID, specID)

	for _, entry in ipairs(bosses) do
		info.text = entry.data.label or entry.key
		info.value = entry.key
		info.checked = (UIDropDownMenu_GetText(self) == info.text)
		UIDropDownMenu_AddButton(info, level)
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

	-- Mythic+ Section
	local mplusLabel = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	mplusLabel:SetPoint("TOPLEFT", SIDE_PADDING, -35)
	mplusLabel:SetText("Mythic+")

	-- Mythic+ Description
	dialog.mplusDesc = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.mplusDesc:SetPoint("TOPLEFT", mplusLabel, "BOTTOMLEFT", 0, -LABEL_PADDING)

	-- Create dungeon dropdown
	dialog.mplusDropdown = CreateFrame("Frame", "TalentExportDialog_MplusDropdown", dialog, "UIDropDownMenuTemplate")
	dialog.mplusDropdown:SetPoint("TOPLEFT", dialog.mplusDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.mplusDropdown, 150)
	UIDropDownMenu_Initialize(dialog.mplusDropdown, InitializeDungeonDropdown)

	-- Create dungeon editbox
	dialog.mplusEdit = CreateFrame("EditBox", "TalentExportDialog_MplusEdit", dialog, "InputBoxTemplate")
	dialog.mplusEdit:SetSize(380, 32)
	dialog.mplusEdit:SetPoint("LEFT", dialog.mplusDropdown, "RIGHT", 10, 2)
	dialog.mplusEdit:SetAutoFocus(false)
	dialog.mplusEdit:SetFontObject(ChatFontNormal)
	dialog.mplusEdit:EnableMouse(true)

	-- Raid Section
	local raidLabel = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	raidLabel:SetPoint("TOPLEFT", dialog.mplusEdit, "BOTTOMLEFT", -195, -SECTION_SPACING)
	raidLabel:SetText("Raid")

	-- Raid Description
	dialog.raidDesc = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.raidDesc:SetPoint("TOPLEFT", raidLabel, "BOTTOMLEFT", 0, -LABEL_PADDING)

	-- Create raid dropdown
	dialog.raidDropdown = CreateFrame("Frame", "TalentExportDialog_RaidDropdown", dialog, "UIDropDownMenuTemplate")
	dialog.raidDropdown:SetPoint("TOPLEFT", dialog.raidDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.raidDropdown, 150)
	UIDropDownMenu_Initialize(dialog.raidDropdown, InitializeRaidDropdown)

	-- Create raid editbox
	dialog.raidEdit = CreateFrame("EditBox", "TalentExportDialog_RaidEdit", dialog, "InputBoxTemplate")
	dialog.raidEdit:SetSize(380, 32)
	dialog.raidEdit:SetPoint("LEFT", dialog.raidDropdown, "RIGHT", 10, 2)
	dialog.raidEdit:SetAutoFocus(false)
	dialog.raidEdit:SetFontObject(ChatFontNormal)
	dialog.raidEdit:EnableMouse(true)

	local instructionsText = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", dialog, "BOTTOM", 0, 15)
	instructionsText:SetText("Select a build to copy the latest talent string | Builds as of " .. addon.Utils.GetFormattedLocalTime(addon.dungeonTalents.updated))
	instructionsText:SetJustifyH("CENTER")

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

		-- Initialize dropdowns with first available option
		local dungeons = GetAvailableDungeons(classID, specID)
		if #dungeons > 0 then
			local firstDungeon = dungeons[1]
			dialog.mplusEdit:SetText(firstDungeon.data.talentString or "")
			UIDropDownMenu_SetText(dialog.mplusDropdown, firstDungeon.data.label or firstDungeon.key)
		end

		local bosses = GetAvailableRaidBosses(classID, specID)
		if #bosses > 0 then
			local firstBoss = bosses[1]
			dialog.raidEdit:SetText(firstBoss.data.talentString or "")
			UIDropDownMenu_SetText(dialog.raidDropdown, firstBoss.data.label or firstBoss.key)
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
