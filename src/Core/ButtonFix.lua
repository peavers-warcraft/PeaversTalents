local _, addon = ...
local Utils = addon.Utils

-- This is a standalone module to ensure the "Builds" button is displayed in the talent UI
-- It bypasses all event handling from PeaversCommons

local ButtonFix = {}
addon.ButtonFix = ButtonFix

-- Initialize the module
function ButtonFix:Initialize()
    Utils.Debug("ButtonFix module initialized")

    -- Check if talent UI is already loaded at startup
    local isTWW = select(4, GetBuildInfo()) >= 110000
    local talentUI = isTWW and "Blizzard_PlayerSpells" or "Blizzard_ClassTalentUI"

    -- Directly create a frame to handle our own events
    local fixFrame = CreateFrame("Frame")

    -- Register for key events we need
    fixFrame:RegisterEvent("ADDON_LOADED")
    fixFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

    -- Process events independently of PeaversCommons
    fixFrame:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" then
            -- Check if the talent UI is being loaded
            if arg1 == "Blizzard_PlayerSpells" or arg1 == "Blizzard_ClassTalentUI" then
                Utils.Debug("ButtonFix detected talent UI loading: " .. arg1)
                ButtonFix:CheckAndCreateButton()
            end
        elseif event == "PLAYER_ENTERING_WORLD" then
            -- When player enters world, schedule multiple checks for the button
            Utils.Debug("ButtonFix detected PLAYER_ENTERING_WORLD")

            -- Initial check
            ButtonFix:CheckAndCreateButton()

            -- Multiple delayed checks to catch any timing issues
            for _, delay in ipairs({0.5, 1, 2, 5}) do
                C_Timer.After(delay, function()
                    ButtonFix:CheckAndCreateButton()
                end)
            end

            -- Also try to force-load the talent UI if it's not loaded yet
            if not C_AddOns.IsAddOnLoaded(talentUI) then
                Utils.Debug("ButtonFix attempting to load talent UI")
                UIParentLoadAddOn(talentUI)

                -- Schedule additional check after forced load
                C_Timer.After(1, function()
                    ButtonFix:CheckAndCreateButton()
                end)
            end
        end
    end)
end

-- Check if button exists and create it if necessary
function ButtonFix:CheckAndCreateButton()
    -- If button already exists, don't do anything
    if _G["TalentExportButton"] then
        Utils.Debug("ButtonFix: TalentExportButton already exists")
        return
    end

    -- Get talent frame
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

    -- Create the button
    Utils.Debug("ButtonFix: Creating export button")
    local exportButton = CreateFrame("Button", "TalentExportButton", talentFrame, "UIPanelButtonTemplate")
    exportButton:SetSize(addon.Config.DIALOG.IMPORT_BUTTON.WIDTH, addon.Config.DIALOG.IMPORT_BUTTON.HEIGHT)
    exportButton:SetText("Builds")
    exportButton:SetPoint("LEFT", talentFrame.SearchBox, "RIGHT", 10, 0)
    exportButton:SetScript("OnClick", addon.ShowExportDialog)

    -- Make sure the button is visible
    exportButton:Show()

    Utils.Debug("ButtonFix: Export button created successfully")
end

return ButtonFix
