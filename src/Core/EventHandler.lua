local _, addon = ...
local Utils = addon.Utils
local EventHandler = addon.EventHandler or {}
addon.EventHandler = EventHandler

local talentFrame
local isTWW = select(4, GetBuildInfo()) >= 110000
local talentUI = isTWW and "Blizzard_PlayerSpells" or "Blizzard_ClassTalentUI"

-- Track if version check is initialized
local versionCheckInitialized = false

local function initializeVersionCheck()
    if not versionCheckInitialized and addon.VersionCheck then
        Utils.Debug("Initializing version check")
        addon.VersionCheck:Initialize()
        versionCheckInitialized = true
    end
end

function EventHandler.Initialize()
    local eventFrame = CreateFrame("Frame")
    eventFrame:RegisterEvent("ADDON_LOADED")
    eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    eventFrame:RegisterEvent("CHAT_MSG_ADDON")
    eventFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
    eventFrame:RegisterEvent("GUILD_ROSTER_UPDATE")
    eventFrame:RegisterEvent("GROUP_JOINED")
    eventFrame:RegisterEvent("PLAYER_GUILD_UPDATE")
    eventFrame:SetScript("OnEvent", EventHandler.OnEvent)

    -- Try to initialize version check
    initializeVersionCheck()
end

function EventHandler.OnEvent(self, event, arg1, ...)
    if event == "ADDON_LOADED" then
        if arg1 == "PeaversTalents" then
            Utils.Debug("PeaversTalents loaded")

            -- Initialize configuration UI if available
			if addon.ConfigUI and addon.ConfigUI.Initialize then
				Utils.Debug("Initializing configuration UI")
				addon.ConfigUI:Initialize()
			end

            -- Initialize support UI if available
			if addon.SupportUI and addon.SupportUI.Initialize then
				Utils.Debug("Initializing support UI")
				addon.SupportUI:Initialize()
			end
        end
        if arg1 == talentUI then
            Utils.Debug("Talent UI loaded")
            talentFrame = isTWW and PlayerSpellsFrame.TalentsFrame or ClassTalentFrame.TalentsTab
            
            -- Wait a moment to ensure the UI is fully loaded
            C_Timer.After(0.1, function()
                if talentFrame and talentFrame.SearchBox then
                    Utils.Debug("Creating export button from EventHandler")
                    EventHandler.CreateExportButton()
                else
                    Utils.Debug("Talent frame not ready yet, trying again in 0.5 seconds")
                    C_Timer.After(0.5, function()
                        Utils.Debug("Second attempt to create export button")
                        EventHandler.CreateExportButton()
                    end)
                end
            end)
        end
        -- Try to initialize version check after any addon loads
        initializeVersionCheck()
    elseif event == "PLAYER_ENTERING_WORLD" then
        Utils.Debug("Player entering world")
        if not C_AddOns.IsAddOnLoaded(talentUI) then
            UIParentLoadAddOn(talentUI)
        end

        -- Broadcast version if initialized
        if versionCheckInitialized and addon.VersionCheck then
            addon.VersionCheck:BroadcastVersion()
        end
    elseif event == "CHAT_MSG_ADDON" then
        -- Handle addon messages if initialized
        if versionCheckInitialized and addon.VersionCheck then
            addon.VersionCheck:HandleAddonMessage(arg1, ...)
        end
    elseif event == "GROUP_ROSTER_UPDATE" or event == "GROUP_JOINED" or event == "PLAYER_GUILD_UPDATE" then
        -- Broadcast version when group composition changes or we join a new group
        if versionCheckInitialized and addon.VersionCheck then
            addon.VersionCheck:BroadcastVersion()
        end
    end
end

function EventHandler.CreateExportButton()
    -- Make sure talent frame is available and properly loaded
    if not talentFrame then
        Utils.Debug("Cannot create button: talentFrame is nil")
        return
    end
    
    -- Make sure SearchBox exists - it's our anchor point
    if not talentFrame.SearchBox then
        Utils.Debug("Cannot create button: talentFrame.SearchBox is nil")
        return
    end
    
    -- Check if button already exists to avoid duplicates
    if _G["TalentExportButton"] then
        Utils.Debug("Export button already exists, skipping creation")
        return
    end
    
    local exportButton = CreateFrame("Button", "TalentExportButton", talentFrame, "UIPanelButtonTemplate")
    exportButton:SetSize(addon.Config.DIALOG.IMPORT_BUTTON.WIDTH, addon.Config.DIALOG.IMPORT_BUTTON.HEIGHT)
    exportButton:SetText("Builds")
    exportButton:SetPoint("LEFT", talentFrame.SearchBox, "RIGHT", 10, 0)
    exportButton:SetScript("OnClick", addon.ShowExportDialog)
    Utils.Debug("Export button created successfully")
end

return EventHandler
