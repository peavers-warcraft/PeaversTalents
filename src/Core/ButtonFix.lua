local _, addon = ...
local Utils = addon.Utils

local ButtonFix = {}
addon.ButtonFix = ButtonFix

function ButtonFix:Initialize()
    Utils.Debug("ButtonFix module initialized")

    local isTWW = select(4, GetBuildInfo()) >= 110000
    local talentUI = isTWW and "Blizzard_PlayerSpells" or "Blizzard_ClassTalentUI"

    local fixFrame = CreateFrame("Frame")
    fixFrame:RegisterEvent("ADDON_LOADED")
    fixFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

    fixFrame:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" then
            if arg1 == "Blizzard_PlayerSpells" or arg1 == "Blizzard_ClassTalentUI" then
                Utils.Debug("ButtonFix detected talent UI loading: " .. arg1)
                ButtonFix:CheckAndCreateButton()
            end
        elseif event == "PLAYER_ENTERING_WORLD" then
            Utils.Debug("ButtonFix detected PLAYER_ENTERING_WORLD")
            ButtonFix:CheckAndCreateButton()

            for _, delay in ipairs({0.5, 1, 2, 5}) do
                C_Timer.After(delay, function()
                    ButtonFix:CheckAndCreateButton()
                end)
            end

            if not C_AddOns.IsAddOnLoaded(talentUI) then
                Utils.Debug("ButtonFix attempting to load talent UI")
                UIParentLoadAddOn(talentUI)
                C_Timer.After(1, function()
                    ButtonFix:CheckAndCreateButton()
                end)
            end
        end
    end)
end

function ButtonFix:CheckAndCreateButton()
    if _G["TalentExportButton"] then
        Utils.Debug("ButtonFix: TalentExportButton already exists")
        return
    end

    local isTWW = select(4, GetBuildInfo()) >= 110000
    local talentFrame = isTWW and PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame or (ClassTalentFrame and ClassTalentFrame.TalentsTab)

    if not talentFrame then
        Utils.Debug("ButtonFix: Talent frame not found")
        return
    end

    if not talentFrame.SearchBox then
        Utils.Debug("ButtonFix: SearchBox not found in talent frame")
        return
    end

    Utils.Debug("ButtonFix: Creating export button")
    local exportButton = CreateFrame("Button", "TalentExportButton", talentFrame, "UIPanelButtonTemplate")
    exportButton:SetSize(addon.Config.DIALOG.IMPORT_BUTTON.WIDTH, addon.Config.DIALOG.IMPORT_BUTTON.HEIGHT)
    exportButton:SetText("Builds")
    exportButton:SetPoint("LEFT", talentFrame.SearchBox, "RIGHT", 10, 0)
    exportButton:SetScript("OnClick", addon.ShowExportDialog)
    exportButton:Show()

    Utils.Debug("ButtonFix: Export button created successfully")
end

return ButtonFix
