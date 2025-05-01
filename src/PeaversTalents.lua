local addonName, addon = ...

-- Access the PeaversCommons library
local PeaversCommons = _G.PeaversCommons

-- Initialize addon metadata
addon.name = addonName
addon.version = C_AddOns.GetAddOnMetadata(addonName, "Version") or "1.0.0"

-- Module references
local Utils = addon.Utils or {}
addon.Utils = Utils

local DataManager = addon.DataManager or {}
addon.DataManager = DataManager

local DropdownManager = addon.DropdownManager or {}
addon.DropdownManager = DropdownManager

local UIComponents = addon.UIComponents or {}
addon.UIComponents = UIComponents

local TabContent = addon.TabContent or {}
addon.TabContent = TabContent

local EventHandler = addon.EventHandler or {}
addon.EventHandler = EventHandler

-- Helper function to check if data addon is loaded and accessible
local function CheckDataAddonLoaded()
    if not PeaversTalentsData then
        Utils.Debug("PeaversTalentsData addon not found!")
        return false
    end
    return true
end

-- Create the export dialog
local function CreateExportDialog()
    local dialog = CreateFrame("Frame", "TalentExportDialog", UIParent, "DefaultPanelTemplate")
    addon.exportDialog = dialog

    dialog:SetSize(addon.Config.DIALOG.WIDTH, addon.Config.DIALOG.HEIGHT + 30)
    dialog:SetPoint("CENTER")
    dialog:SetFrameStrata("DIALOG")
    dialog:SetFrameLevel(100)

    -- Create basic frame elements
    dialog.TitleBg = UIComponents.CreateTitleBackground(dialog)
    dialog.CloseButton = UIComponents.CreateCloseButton(dialog)

    -- Initialize tab system
    dialog.Tabs = {}
    dialog.TabContents = {}

    -- Create tabs
    dialog.Tabs[1] = UIComponents.CreateTab(dialog, 1, "wowcompare.io")
    dialog.Tabs[2] = UIComponents.CreateTab(dialog, 2, "most-popular")
    dialog.Tabs[3] = UIComponents.CreateTab(dialog, 3, "community")
    dialog.Tabs[4] = UIComponents.CreateTab(dialog, 4, "worldwide")

    PanelTemplates_SetNumTabs(dialog, 4)
    PanelTemplates_SetTab(dialog, 1)

    -- Create tab contents
    for i = 1, 4 do
        dialog.TabContents[i] = UIComponents.CreateTabContent(dialog)
    end

    -- Fill tab contents
    local tab1 = dialog.TabContents[1]
    tab1:Show()
    TabContent.Createwowcompare.ioTab(dialog, tab1)

    local tab2 = dialog.TabContents[2]
    TabContent.Createmost-popularTab(dialog, tab2)

    local tab3 = dialog.TabContents[3]
    TabContent.CreateIceyVeinsTab(dialog, tab3)

    local tab4 = dialog.TabContents[4]
    TabContent.CreateUggTab(dialog, tab4)

    -- Frame behavior
    dialog:SetMovable(true)
    dialog:EnableMouse(true)
    dialog:RegisterForDrag("LeftButton")
    dialog:SetScript("OnDragStart", dialog.StartMoving)
    dialog:SetScript("OnDragStop", dialog.StopMovingOrSizing)
    tinsert(UISpecialFrames, dialog:GetName())

    -- OnShow handler
    dialog:SetScript("OnShow", function()
        local classID, specID = Utils.GetPlayerClassAndSpec()
        Utils.Debug("Dialog shown - Loading saved selections")

        -- Check if data addon is loaded
        if not CheckDataAddonLoaded() then
            return
        end

        -- Load any saved selection first
        local savedSource, savedCategory, savedBuildKey = addon.LocalStorage.LoadSelection()
        Utils.Debug("Loaded saved selection:", savedSource, savedCategory, savedBuildKey)

        -- Get all available sources
        local sources = PeaversTalentsData.API.GetSources()

        -- Initialize dropdowns based on available data
        for source, tabs in pairs({
            wowcompare.io = {mythic = "Mythic", raid = "Raid"},
            most-popular = {mythic = "Mythic", raid = "Raid", misc = "Misc"},
            ["community"] = {mythic = "Mythic", raid = "Raid", misc = "Misc"},
            ugg = {mythic = "Mythic", raid = "Raid"}
        }) do
            if Utils.TableContains(sources, source) then
                local builds = PeaversTalentsData.API.GetBuilds(classID, specID, source)
                if builds and #builds > 0 then
                    for category, _ in pairs(tabs) do
                        local dropdownName = source .. category:gsub("^%l", string.upper) .. "Dropdown"
                        local dropdown = dialog[dropdownName]
                        if dropdown then
                            UIDropDownMenu_Initialize(dropdown, addon.DropdownManager["Initialize" .. source:gsub("^%l", string.upper) .. category:gsub("^%l", string.upper) .. "Dropdown"])

                            -- If this is our saved selection, set it
                            if savedSource == source and savedCategory == category then
                                Utils.Debug("Found matching dropdown for saved selection:", dropdownName)
                                for _, build in ipairs(builds) do
                                    if build.dungeonID == savedBuildKey then
                                        local editBox = dialog[source .. category:gsub("^%l", string.upper) .. "Edit"]
                                        if editBox then
                                            editBox:SetText(build.talentString or "")
                                            editBox:SetCursorPosition(0)
                                            UIDropDownMenu_SetText(dropdown, build.label or tostring(savedBuildKey))
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        -- Handle tab visibility based on available data
        for i, tab in ipairs(dialog.Tabs) do
            local source = i == 1 and "top-players" or i == 2 and "most-popular" or i == 3 and "community" or i == 4 and "worldwide"
            local hasData = Utils.TableContains(sources, source) and
                    PeaversTalentsData.API.GetBuilds(classID, specID, source) and
                    #PeaversTalentsData.API.GetBuilds(classID, specID, source) > 0

            if hasData then
                tab:Show()
                -- If this was our saved source, show its tab
                if source == savedSource then
                    PanelTemplates_SetTab(dialog, i)
                    for j, content in pairs(dialog.TabContents) do
                        if j == i then
                            content:Show()
                        else
                            content:Hide()
                        end
                    end
                end
            else
                tab:Hide()
            end
        end

        -- Hook the hide script if not already done
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
    Utils.Debug("Showing export dialog")
    local dialog = addon.exportDialog or CreateExportDialog()
    dialog:Show()
end

-- Helper function for source checking
function Utils.TableContains(tbl, value)
    for _, v in pairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

-- Initialize addon using PeaversCommons Events module
PeaversCommons.Events:Init(addonName, function()
    -- Initialize configuration
    if addon.Config and addon.Config.Initialize then
        addon.Config:Initialize()
    end

    -- Initialize configuration UI if available
    if addon.ConfigUI and addon.ConfigUI.Initialize then
        addon.ConfigUI:Initialize()
    end

    -- Initialize support UI if available
    if addon.SupportUI and addon.SupportUI.Initialize then
        addon.SupportUI:Initialize()
    end

    -- Register for events
    PeaversCommons.Events:RegisterEvent("ADDON_LOADED", function(event, arg1)
        if arg1 == "Blizzard_PlayerSpells" or arg1 == "Blizzard_ClassTalentUI" then
            Utils.Debug("Talent UI loaded")
            local isTWW = select(4, GetBuildInfo()) >= 110000
            local talentFrame = isTWW and PlayerSpellsFrame.TalentsFrame or ClassTalentFrame.TalentsTab
            EventHandler.CreateExportButton()
        end
    end)

    PeaversCommons.Events:RegisterEvent("PLAYER_ENTERING_WORLD", function()
        Utils.Debug("Player entering world")
        local isTWW = select(4, GetBuildInfo()) >= 110000
        local talentUI = isTWW and "Blizzard_PlayerSpells" or "Blizzard_ClassTalentUI"

        if not C_AddOns.IsAddOnLoaded(talentUI) then
            UIParentLoadAddOn(talentUI)
        end

        -- Initialize version check
        if addon.VersionCheck then
            addon.VersionCheck:Initialize()
            addon.VersionCheck:BroadcastVersion()
        end
    end)

    -- Register for version check events
    if addon.VersionCheck then
        PeaversCommons.Events:RegisterEvent("CHAT_MSG_ADDON", function(event, ...)
            addon.VersionCheck:HandleAddonMessage(...)
        end)

        PeaversCommons.Events:RegisterEvent("GROUP_ROSTER_UPDATE", function()
            addon.VersionCheck:BroadcastVersion()
        end)

        PeaversCommons.Events:RegisterEvent("GROUP_JOINED", function()
            addon.VersionCheck:BroadcastVersion()
        end)

        PeaversCommons.Events:RegisterEvent("PLAYER_GUILD_UPDATE", function()
            addon.VersionCheck:BroadcastVersion()
        end)
    end
    
    -- DIRECT REGISTRATION APPROACH
    -- This ensures the addon appears in Options > Addons regardless of PeaversCommons logic
    C_Timer.After(2, function()
        -- Create the main panel (Support UI as landing page)
        local mainPanel = CreateFrame("Frame")
        mainPanel.name = "PeaversTalents"
        
        -- Required callbacks
        mainPanel.OnRefresh = function() end
        mainPanel.OnCommit = function() end
        mainPanel.OnDefault = function() end
        
        -- Get addon version
        local version = C_AddOns.GetAddOnMetadata(addonName, "Version") or "1.0.0"
        
        -- Add background image
        local ICON_ALPHA = 0.1
        local iconPath = "Interface\\AddOns\\" .. addonName .. "\\src\\Media\\Icon"
        local largeIcon = mainPanel:CreateTexture(nil, "BACKGROUND")
        largeIcon:SetTexture(iconPath)
        largeIcon:SetPoint("TOPLEFT", mainPanel, "TOPLEFT", 0, 0)
        largeIcon:SetPoint("BOTTOMRIGHT", mainPanel, "BOTTOMRIGHT", 0, 0)
        largeIcon:SetAlpha(ICON_ALPHA)
        
        -- Create header and description
        local titleText = mainPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
        titleText:SetPoint("TOPLEFT", 16, -16)
        titleText:SetText("Peavers Talents")
        titleText:SetTextColor(1, 0.84, 0)  -- Gold color for title
        
        -- Version information
        local versionText = mainPanel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        versionText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
        versionText:SetText("Version: " .. version)
        
        -- Support information
        local supportInfo = mainPanel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        supportInfo:SetPoint("TOPLEFT", 16, -70)
        supportInfo:SetPoint("TOPRIGHT", -16, -70)
        supportInfo:SetJustifyH("LEFT")
        supportInfo:SetText("Import and export talent builds from popular sources. If you enjoy this addon and would like to support its development, or if you need help, stop by the website.")
        supportInfo:SetSpacing(2)
        
        -- Website URL
        local websiteLabel = mainPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
        websiteLabel:SetPoint("TOPLEFT", 16, -120)
        websiteLabel:SetText("Website:")
        
        local websiteURL = mainPanel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        websiteURL:SetPoint("TOPLEFT", websiteLabel, "TOPLEFT", 70, 0)
        websiteURL:SetText("https://peavers.io")
        websiteURL:SetTextColor(0.3, 0.6, 1.0)
        
        -- Additional info
        local additionalInfo = mainPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
        additionalInfo:SetPoint("BOTTOMRIGHT", -16, 16)
        additionalInfo:SetJustifyH("RIGHT")
        additionalInfo:SetText("Thank you for using Peavers Addons!")
        
        -- Now create/prepare the settings panel
        local settingsPanel
        
        if addon.ConfigUI and addon.ConfigUI.panel then
            -- Use existing ConfigUI panel
            settingsPanel = addon.ConfigUI.panel
        else
            -- Create a simple settings panel with commands
            settingsPanel = CreateFrame("Frame")
            settingsPanel.name = "Settings"
            
            -- Required callbacks
            settingsPanel.OnRefresh = function() end
            settingsPanel.OnCommit = function() end
            settingsPanel.OnDefault = function() end
            
            -- Add content
            local settingsTitle = settingsPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
            settingsTitle:SetPoint("TOPLEFT", 16, -16)
            settingsTitle:SetText("Settings")
            
            -- Add commands section - currently no slash commands for PeaversTalents
            local commandsTitle = settingsPanel:CreateFontString(nil, "ARTWORK", "GameFontNormal") 
            commandsTitle:SetPoint("TOPLEFT", settingsTitle, "BOTTOMLEFT", 0, -16)
            commandsTitle:SetText("Information:")
            
            local commandsList = settingsPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
            commandsList:SetPoint("TOPLEFT", commandsTitle, "BOTTOMLEFT", 10, -8)
            commandsList:SetJustifyH("LEFT")
            commandsList:SetText(
                "This addon provides talent build import/export functionality.\n" ..
                "Access it through the talent UI in-game."
            )
        end
        
        -- Register with the Settings API
        if Settings then
            -- Register main category
            local category = Settings.RegisterCanvasLayoutCategory(mainPanel, mainPanel.name)
            
            -- This is the CRITICAL line to make it appear in Options > Addons
            Settings.RegisterAddOnCategory(category)
            
            -- Store the category
            addon.directCategory = category
            addon.directPanel = mainPanel
            
            -- PeaversTalents doesn't need a Settings subcategory as it has no config options
            
            -- Debug output
            if Utils and Utils.Debug then
                Utils.Debug(addon, "Direct registration complete")
            end
        end
    end)
end, {
    announceMessage = ""
})
