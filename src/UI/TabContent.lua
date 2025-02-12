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

function TabContent.Createwowcompare.ioTab(dialog, tab)
	-- Mythic+ Section
	local mplusLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	mplusLabel:SetPoint("TOPLEFT", addon.Config.DIALOG.PADDING.SIDE, -10)
	mplusLabel:SetText("Mythic+")

	dialog.mplusDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.mplusDesc:SetPoint("TOPLEFT", mplusLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.mplusDropdown = CreateFrame("Frame", "TalentExportDialog_MplusDropdown", tab, "UIDropDownMenuTemplate")
	dialog.mplusDropdown:SetPoint("TOPLEFT", dialog.mplusDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.mplusDropdown, 150)
	UIDropDownMenu_Initialize(dialog.mplusDropdown, addon.DropdownManager.Initializewowcompare.ioMythicDropdown)

	dialog.mplusEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_MplusEdit")
	dialog.mplusEdit:SetPoint("LEFT", dialog.mplusDropdown, "RIGHT", 10, 2)

	-- Raid Section
	local raidLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	raidLabel:SetPoint("TOPLEFT", dialog.mplusEdit, "BOTTOMLEFT", -195, -addon.Config.DIALOG.SECTION_SPACING)
	raidLabel:SetText("Raid")

	dialog.raidDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.raidDesc:SetPoint("TOPLEFT", raidLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.raidDropdown = CreateFrame("Frame", "TalentExportDialog_RaidDropdown", tab, "UIDropDownMenuTemplate")
	dialog.raidDropdown:SetPoint("TOPLEFT", dialog.raidDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.raidDropdown, 150)
	UIDropDownMenu_Initialize(dialog.raidDropdown, addon.DropdownManager.Initializewowcompare.ioRaidDropdown)

	dialog.raidEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_RaidEdit")
	dialog.raidEdit:SetPoint("LEFT", dialog.raidDropdown, "RIGHT", 10, 2)

	local instructionsText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab, "BOTTOM", 0, 55)
	instructionsText:SetText("Select a build to copy the latest talent string | Builds as of " .. Utils.GetFormattedUpdate("top-players"))
	instructionsText:SetJustifyH("CENTER")
end

function TabContent.Createmost-popularTab(dialog, tab)
	-- Mythic+ Section
	local mplusLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	mplusLabel:SetPoint("TOPLEFT", addon.Config.DIALOG.PADDING.SIDE, -10)
	mplusLabel:SetText("Mythic+")

	dialog.most-popularMplusDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.most-popularMplusDesc:SetPoint("TOPLEFT", mplusLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.most-popularMplusDropdown = CreateFrame("Frame", "TalentExportDialog_most-popularMplusDropdown", tab, "UIDropDownMenuTemplate")
	dialog.most-popularMplusDropdown:SetPoint("TOPLEFT", dialog.most-popularMplusDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.most-popularMplusDropdown, 150)
	UIDropDownMenu_Initialize(dialog.most-popularMplusDropdown, addon.DropdownManager.Initializemost-popularMythicDropdown)

	dialog.most-popularMplusEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_most-popularMplusEdit")
	dialog.most-popularMplusEdit:SetPoint("LEFT", dialog.most-popularMplusDropdown, "RIGHT", 10, 2)

	-- Raid Section
	local raidLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	raidLabel:SetPoint("TOPLEFT", dialog.most-popularMplusEdit, "BOTTOMLEFT", -195, -addon.Config.DIALOG.SECTION_SPACING)
	raidLabel:SetText("Raid")

	dialog.most-popularRaidDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.most-popularRaidDesc:SetPoint("TOPLEFT", raidLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.most-popularRaidDropdown = CreateFrame("Frame", "TalentExportDialog_most-popularRaidDropdown", tab, "UIDropDownMenuTemplate")
	dialog.most-popularRaidDropdown:SetPoint("TOPLEFT", dialog.most-popularRaidDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.most-popularRaidDropdown, 150)
	UIDropDownMenu_Initialize(dialog.most-popularRaidDropdown, addon.DropdownManager.Initializemost-popularRaidDropdown)

	dialog.most-popularRaidEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_most-popularRaidEdit")
	dialog.most-popularRaidEdit:SetPoint("LEFT", dialog.most-popularRaidDropdown, "RIGHT", 10, 2)

	-- Misc Section
	local miscLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	miscLabel:SetPoint("TOPLEFT", dialog.most-popularRaidEdit, "BOTTOMLEFT", -195, -addon.Config.DIALOG.SECTION_SPACING)
	miscLabel:SetText("Misc")

	dialog.most-popularMiscDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.most-popularMiscDesc:SetPoint("TOPLEFT", miscLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.most-popularMiscDropdown = CreateFrame("Frame", "TalentExportDialog_most-popularMiscDropdown", tab, "UIDropDownMenuTemplate")
	dialog.most-popularMiscDropdown:SetPoint("TOPLEFT", dialog.most-popularMiscDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.most-popularMiscDropdown, 150)
	UIDropDownMenu_Initialize(dialog.most-popularMiscDropdown, addon.DropdownManager.Initializemost-popularMiscDropdown)

	dialog.most-popularMiscEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_most-popularMiscEdit")
	dialog.most-popularMiscEdit:SetPoint("LEFT", dialog.most-popularMiscDropdown, "RIGHT", 10, 2)

	local instructionsText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab, "BOTTOM", 0, 55)
	instructionsText:SetText("Select a build to copy the latest talent string | Builds as of " .. Utils.GetFormattedUpdate("most-popular"))
	instructionsText:SetJustifyH("CENTER")
end

function TabContent.CreateIceyVeinsTab(dialog, tab)
	-- Mythic+ Section
	local mplusLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	mplusLabel:SetPoint("TOPLEFT", addon.Config.DIALOG.PADDING.SIDE, -10)
	mplusLabel:SetText("Mythic+")

	dialog.communityMplusDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.communityMplusDesc:SetPoint("TOPLEFT", mplusLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.communityMplusDropdown = CreateFrame("Frame", "TalentExportDialog_IceveinsMplusDropdown", tab, "UIDropDownMenuTemplate")
	dialog.communityMplusDropdown:SetPoint("TOPLEFT", dialog.communityMplusDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.communityMplusDropdown, 150)
	UIDropDownMenu_Initialize(dialog.communityMplusDropdown, addon.DropdownManager.InitializecommunityMythicDropdown)

	dialog.communityMplusEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_communityMplusEdit")
	dialog.communityMplusEdit:SetPoint("LEFT", dialog.communityMplusDropdown, "RIGHT", 10, 2)

	-- Raid Section
	local raidLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	raidLabel:SetPoint("TOPLEFT", dialog.communityMplusEdit, "BOTTOMLEFT", -195, -addon.Config.DIALOG.SECTION_SPACING)
	raidLabel:SetText("Raid")

	dialog.communityRaidDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.communityRaidDesc:SetPoint("TOPLEFT", raidLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.communityRaidDropdown = CreateFrame("Frame", "TalentExportDialog_communityRaidDropdown", tab, "UIDropDownMenuTemplate")
	dialog.communityRaidDropdown:SetPoint("TOPLEFT", dialog.communityRaidDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.communityRaidDropdown, 150)
	UIDropDownMenu_Initialize(dialog.communityRaidDropdown, addon.DropdownManager.InitializecommunityRaidDropdown)

	dialog.communityRaidEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_communityRaidEdit")
	dialog.communityRaidEdit:SetPoint("LEFT", dialog.communityRaidDropdown, "RIGHT", 10, 2)

	-- Misc Section
	local miscLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	miscLabel:SetPoint("TOPLEFT", dialog.communityRaidEdit, "BOTTOMLEFT", -195, -addon.Config.DIALOG.SECTION_SPACING)
	miscLabel:SetText("Misc")

	dialog.communityMiscDesc = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	dialog.communityMiscDesc:SetPoint("TOPLEFT", miscLabel, "BOTTOMLEFT", 0, -addon.Config.DIALOG.PADDING.LABEL)

	dialog.communityMiscDropdown = CreateFrame("Frame", "TalentExportDialog_communityMiscDropdown", tab, "UIDropDownMenuTemplate")
	dialog.communityMiscDropdown:SetPoint("TOPLEFT", dialog.communityMiscDesc, "BOTTOMLEFT", -15, -5)
	UIDropDownMenu_SetWidth(dialog.communityMiscDropdown, 150)
	UIDropDownMenu_Initialize(dialog.communityMiscDropdown, addon.DropdownManager.InitializecommunityMiscDropdown)

	dialog.communityMiscEdit = TabContent.CreateEditBox(tab, "TalentExportDialog_communityMiscEdit")
	dialog.communityMiscEdit:SetPoint("LEFT", dialog.communityMiscDropdown, "RIGHT", 10, 2)

	local instructionsText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab, "BOTTOM", 0, 55)
	instructionsText:SetText("Select a build to copy the latest talent string | Builds as of " .. Utils.GetFormattedUpdate("community"))
	instructionsText:SetJustifyH("CENTER")
end

return TabContent
