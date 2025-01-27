local addonName, addon = ...

-- Constants
local DIALOG_WIDTH = 400
local DIALOG_HEIGHT = 200
local TITLE_HEIGHT = 24
local EDITBOX_WIDTH = 350
local EDITBOX_HEIGHT = 32
local IMPORT_BUTTON_WIDTH = 100
local IMPORT_BUTTON_HEIGHT = 22
local SECTION_PADDING = 20
local LABEL_PADDING = 2
local SIDE_PADDING = 15

-- Local references
local talentFrame
local isTWW = select(4, GetBuildInfo()) >= 110000
local talentUI = isTWW and "Blizzard_PlayerSpells" or "Blizzard_ClassTalentUI"
local Utils = addon.Utils
local TalentDB = addon.DB

-- Create frame to handle events
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")


local function GetCurrentTalentStrings()
    local _, _, playerClassID = Utils.GetPlayerInfo()

    -- Get current spec ID
    local specID = GetSpecialization() and GetSpecializationInfo(GetSpecialization())
    if not specID then return nil, nil end

    -- Get the talent strings from our database using class ID and spec ID
    local classData = TalentDB[playerClassID]
    if not classData then return nil, nil end

    local specData = classData.specs[specID]
    if not specData then return nil, nil end

    local mplus = specData["MythicPlus"]
    local raid = specData["Raiding"]

    -- Build description strings
    local mplusDesc = mplus and string.format("DPS: %s%s%s",
            mplus.dps or "",
            mplus.hps and (", HPS: " .. mplus.hps) or "",
            mplus.keystone and (", Key: " .. mplus.keystone) or ""
    )
    local raidDesc = raid and string.format("DPS: %s%s",
            raid.dps or "",
            raid.hps and (", HPS: " .. raid.hps) or ""
    )

    return {
        string = mplus and mplus.talentString,
        desc = mplusDesc
    }, {
        string = raid and raid.talentString,
        desc = raidDesc
    }
end
---Creates an EditBox with standard styling and a specific name
local function CreateStyledEditBox(parent, name, point)
    local editBox = CreateFrame("EditBox", name, parent, "InputBoxTemplate")
    editBox:SetSize(EDITBOX_WIDTH, EDITBOX_HEIGHT)
    editBox:SetPoint(unpack(point))
    editBox:SetAutoFocus(false)
    editBox:SetFontObject(ChatFontNormal)
    return editBox
end

---Creates the button in the talent frame
local function CreateExportButton()
    if not talentFrame or _G["TalentExportButton"] then
        return
    end

    local exportButton = CreateFrame("Button", "TalentExportButton", talentFrame, "UIPanelButtonTemplate")
    exportButton:SetSize(IMPORT_BUTTON_WIDTH, IMPORT_BUTTON_HEIGHT)
    exportButton:SetText("Best Talents")
    exportButton:SetPoint("LEFT", talentFrame.SearchBox, "RIGHT", 10, 0)
    exportButton:SetScript("OnClick", function()
        addon.ShowExportDialog()
    end)
end

---Creates the export dialog if it doesn't exist
local function CreateExportDialog()
    local dialog = CreateFrame("Frame", "TalentExportDialog", UIParent, "DefaultPanelTemplate")
    addon.exportDialog = dialog

    dialog:SetSize(DIALOG_WIDTH, DIALOG_HEIGHT)
    dialog:SetPoint("CENTER")
    dialog:SetFrameStrata("DIALOG")
    dialog:SetFrameLevel(100)

    -- Create title background frame
    dialog.TitleBg = CreateFrame("Frame", nil, dialog)
    dialog.TitleBg:SetPoint("TOPLEFT", 0, 0)
    dialog.TitleBg:SetPoint("TOPRIGHT", 0, 0)
    dialog.TitleBg:SetHeight(TITLE_HEIGHT)
    dialog.TitleBg:SetFrameLevel(dialog:GetFrameLevel() + 1)

    -- Create close button
    dialog.CloseButton = CreateFrame("Button", nil, dialog, "UIPanelCloseButtonNoScripts")
    dialog.CloseButton:SetPoint("TOPRIGHT", dialog, "TOPRIGHT", 0, 0)
    dialog.CloseButton:SetFrameStrata("DIALOG")
    dialog.CloseButton:SetFrameLevel(dialog:GetFrameLevel() + 1000)
    dialog.CloseButton:Raise()
    dialog.CloseButton:SetScript("OnClick", function()
        dialog:Hide()
    end)

    -- Create Mythic+ section
    local mplusLabel = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
    mplusLabel:SetPoint("TOPLEFT", SIDE_PADDING, -35)
    mplusLabel:SetText("Mythic+")

    dialog.mplusDesc = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    dialog.mplusDesc:SetPoint("TOPLEFT", mplusLabel, "BOTTOMLEFT", 0, -LABEL_PADDING)

    -- Create EditBox with specific name
    dialog.mplusEdit = CreateStyledEditBox(dialog, "TalentExportDialog_MplusEdit",
        { "TOPLEFT", dialog.mplusDesc, "BOTTOMLEFT", 0, -5 })

    -- Create Raid section
    local raidLabel = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
    raidLabel:SetPoint("TOPLEFT", dialog.mplusEdit, "BOTTOMLEFT", 0, -SECTION_PADDING)
    raidLabel:SetText("Raid")

    dialog.raidDesc = dialog:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    dialog.raidDesc:SetPoint("TOPLEFT", raidLabel, "BOTTOMLEFT", 0, -LABEL_PADDING)

    -- Create EditBox with specific name
    dialog.raidEdit = CreateStyledEditBox(dialog, "TalentExportDialog_RaidEdit",
        { "TOPLEFT", dialog.raidDesc, "BOTTOMLEFT", 0, -5 })

    -- Make dialog movable
    dialog:SetMovable(true)
    dialog:EnableMouse(true)
    dialog:RegisterForDrag("LeftButton")
    dialog:SetScript("OnDragStart", dialog.StartMoving)
    dialog:SetScript("OnDragStop", dialog.StopMovingOrSizing)

    -- Handle ESC key
    tinsert(UISpecialFrames, dialog:GetName())

    -- Handle dialog showing/hiding
    dialog:SetScript("OnShow", function()
        if talentFrame and not dialog.hideHooked then
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

---Shows the export dialog with current talent strings
function addon.ShowExportDialog()
    local dialog = addon.exportDialog or CreateExportDialog()

    -- Update the strings
    local mplusData, raidData = GetCurrentTalentStrings()

    if dialog.mplusEdit and dialog.raidEdit then
        dialog.mplusEdit:SetText(mplusData and mplusData.string or "No M+ build available for your spec")
        dialog.raidEdit:SetText(raidData and raidData.string or "No raid build available for your spec")
        dialog.mplusDesc:SetText(mplusData and mplusData.desc or "")
        dialog.raidDesc:SetText(raidData and raidData.desc or "")
    end

    dialog:Show()
end

-- Event handler
eventFrame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == talentUI then
            talentFrame = isTWW and PlayerSpellsFrame.TalentsFrame or ClassTalentFrame.TalentsTab
            CreateExportButton()
            self:UnregisterEvent("ADDON_LOADED")
        end
    elseif event == "PLAYER_ENTERING_WORLD" then
        if not C_AddOns.IsAddOnLoaded(talentUI) then
            UIParentLoadAddOn(talentUI)
        end

        if talentFrame then
            CreateExportButton()
        end
    end
end)
