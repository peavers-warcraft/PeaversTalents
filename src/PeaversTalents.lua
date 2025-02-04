local addonName, addon = ...

addon.Utils = addon.Utils or {}

function addon.Utils.GetPlayerInfo()
	local _, _, classID = UnitClass("player")
	return nil, nil, classID
end

local DEBUG_ENABLED = true

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

	dialog:SetSize(DIALOG_WIDTH, DIALOG_HEIGHT + 30)
	dialog:SetPoint("CENTER")
	dialog:SetFrameStrata("DIALOG")
	dialog:SetFrameLevel(100)

	-- Standard frame setup
	dialog.TitleBg = CreateFrame("Frame", nil, dialog)
	dialog.TitleBg:SetPoint("TOPLEFT", 0, 0)
	dialog.TitleBg:SetPoint("TOPRIGHT", 0, 0)
	dialog.TitleBg:SetHeight(TITLE_HEIGHT)
	dialog.TitleBg:SetFrameLevel(dialog:GetFrameLevel() + 1)

	dialog.CloseButton = CreateFrame("Button", nil, dialog, "UIPanelCloseButtonNoScripts")
	dialog.CloseButton:SetPoint("TOPRIGHT", dialog, "TOPRIGHT", 0, 0)
	dialog.CloseButton:SetFrameStrata("DIALOG")
	dialog.CloseButton:SetFrameLevel(dialog:GetFrameLevel() + 1000)
	dialog.CloseButton:Raise()
	dialog.CloseButton:SetScript("OnClick", function()
		dialog:Hide()
	end)

	-- Tab system
	dialog.Tabs = {}
	dialog.TabContents = {}

	local function CreateTab(id, text)
		local tabName = "TalentExportDialogTab" .. id
		local tab = CreateFrame("Button", tabName, dialog, "PanelTabButtonTemplate")
		tab:SetText(text)
		tab:SetID(id)

		if id == 1 then
			tab:SetPoint("BOTTOMLEFT", dialog, "BOTTOMLEFT", 5, -30)
		else
			tab:SetPoint("LEFT", dialog.Tabs[id - 1], "RIGHT", -16, 0)
		end

		tab:SetScript("OnClick", function()
			PanelTemplates_SetTab(dialog, id)
			for _, content in pairs(dialog.TabContents) do
				content:Hide()
			end
			dialog.TabContents[id]:Show()
		end)

		return tab
	end

	local function CreateTabContent(id)
		local content = CreateFrame("Frame", nil, dialog)
		content:SetPoint("TOPLEFT", dialog, "TOPLEFT", 0, -25)
		content:SetPoint("BOTTOMRIGHT", dialog, "BOTTOMRIGHT", 0, -30)
		content:Hide()
		return content
	end

	-- Create tabs
	dialog.Tabs[1] = CreateTab(1, "wowcompare.io")
	dialog.Tabs[2] = CreateTab(2, "most-popular")
	dialog.Tabs[3] = CreateTab(3, "Icey Veins")

	PanelTemplates_SetNumTabs(dialog, 3)
	PanelTemplates_SetTab(dialog, 1)

	-- Create tab contents
	for i = 1, 3 do
		dialog.TabContents[i] = CreateTabContent(i)
	end

	-- Tab 1 Content (wowcompare.io)
	local tab1 = dialog.TabContents[1]

	tab1:Show()

	-- Mythic+ Section
	local mplusLabel = tab1:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	mplusLabel:SetPoint("TOPLEFT", SIDE_PADDING, -10)
	mplusLabel:SetText("Mythic+")

	dialog.mplusDesc = tab1:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.mplusDesc:SetPoint("TOPLEFT", mplusLabel, "BOTTOMLEFT", 0, -LABEL_PADDING)

	dialog.mplusDropdown = CreateFrame("Frame", "TalentExportDialog_MplusDropdown", tab1, "UIDropDownMenuTemplate")
	dialog.mplusDropdown:SetPoint("TOPLEFT", dialog.mplusDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.mplusDropdown, 150)
	UIDropDownMenu_Initialize(dialog.mplusDropdown, InitializeDungeonDropdown)

	dialog.mplusEdit = CreateFrame("EditBox", "TalentExportDialog_MplusEdit", tab1, "InputBoxTemplate")
	dialog.mplusEdit:SetSize(380, 32)
	dialog.mplusEdit:SetPoint("LEFT", dialog.mplusDropdown, "RIGHT", 10, 2)
	dialog.mplusEdit:SetAutoFocus(false)
	dialog.mplusEdit:SetFontObject(ChatFontNormal)
	dialog.mplusEdit:EnableMouse(true)

	-- Raid Section
	local raidLabel = tab1:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	raidLabel:SetPoint("TOPLEFT", dialog.mplusEdit, "BOTTOMLEFT", -195, -SECTION_SPACING)
	raidLabel:SetText("Raid")

	dialog.raidDesc = tab1:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.raidDesc:SetPoint("TOPLEFT", raidLabel, "BOTTOMLEFT", 0, -LABEL_PADDING)

	dialog.raidDropdown = CreateFrame("Frame", "TalentExportDialog_RaidDropdown", tab1, "UIDropDownMenuTemplate")
	dialog.raidDropdown:SetPoint("TOPLEFT", dialog.raidDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.raidDropdown, 150)
	UIDropDownMenu_Initialize(dialog.raidDropdown, InitializeRaidDropdown)

	dialog.raidEdit = CreateFrame("EditBox", "TalentExportDialog_RaidEdit", tab1, "InputBoxTemplate")
	dialog.raidEdit:SetSize(380, 32)
	dialog.raidEdit:SetPoint("LEFT", dialog.raidDropdown, "RIGHT", 10, 2)
	dialog.raidEdit:SetAutoFocus(false)
	dialog.raidEdit:SetFontObject(ChatFontNormal)
	dialog.raidEdit:EnableMouse(true)

	local instructionsText = tab1:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab1, "BOTTOM", 0, 55)
	instructionsText:SetText("Select a build to copy the latest talent string | Builds as of " .. addon.Utils.GetFormattedLocalTime(addon.dungeonTalents.updated))
	instructionsText:SetJustifyH("CENTER")

	-- Tab 2 & 3 Content
	for i = 2, 3 do
		local comingSoon = dialog.TabContents[i]:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
		comingSoon:SetPoint("CENTER")
		comingSoon:SetText("Coming soon")
	end

	-- Frame behavior
	dialog:SetMovable(true)
	dialog:EnableMouse(true)
	dialog:RegisterForDrag("LeftButton")
	dialog:SetScript("OnDragStart", dialog.StartMoving)
	dialog:SetScript("OnDragStop", dialog.StopMovingOrSizing)
	tinsert(UISpecialFrames, dialog:GetName())

	-- OnShow handler
	dialog:SetScript("OnShow", function()
		local classID, specID = GetPlayerClassAndSpec()

		-- Update dropdowns
		if #GetAvailableDungeons(classID, specID) > 0 then
			UIDropDownMenu_Initialize(dialog.mplusDropdown, InitializeDungeonDropdown)
		end

		if #GetAvailableRaidBosses(classID, specID) > 0 then
			UIDropDownMenu_Initialize(dialog.raidDropdown, InitializeRaidDropdown)
		end

		if not dialog.hideHooked and talentFrame then
			talentFrame:HookScript("OnHide", function()
				dialog:Hide()
			end)
			dialog.hideHooked = true
		end
	end)

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
