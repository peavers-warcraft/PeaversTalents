local addonName, addon = ...
local PeaversCommons = _G.PeaversCommons

addon.name = addonName
addon.version = C_AddOns.GetAddOnMetadata(addonName, "Version") or "1.0.0"

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

local ButtonFix = addon.ButtonFix or {}
addon.ButtonFix = ButtonFix

local function CheckDataAddonLoaded()
    if not PeaversTalentsData then
        Utils.Debug("PeaversTalentsData addon not found!")
        return false
    end
    return true
end

local function CreateExportDialog()
    local dialog = CreateFrame("Frame", "TalentExportDialog", UIParent, "DefaultPanelTemplate")
    addon.exportDialog = dialog

    dialog:SetSize(addon.Config.DIALOG.WIDTH, addon.Config.DIALOG.HEIGHT + 30)
    dialog:SetPoint("CENTER")
    dialog:SetFrameStrata("DIALOG")
    dialog:SetFrameLevel(100)

    dialog.TitleBg = UIComponents.CreateTitleBackground(dialog)
    dialog.CloseButton = UIComponents.CreateCloseButton(dialog)

    dialog.Tabs = {}
    dialog.TabContents = {}

    dialog.Tabs[1] = UIComponents.CreateTab(dialog, 1, "wowcompare.io")
    dialog.Tabs[2] = UIComponents.CreateTab(dialog, 2, "most-popular")
    dialog.Tabs[3] = UIComponents.CreateTab(dialog, 3, "community")
    dialog.Tabs[4] = UIComponents.CreateTab(dialog, 4, "worldwide")

    PanelTemplates_SetNumTabs(dialog, 4)
    PanelTemplates_SetTab(dialog, 1)

    for i = 1, 4 do
        dialog.TabContents[i] = UIComponents.CreateTabContent(dialog)
    end

    local tab1 = dialog.TabContents[1]
    tab1:Show()
    TabContent.Createwowcompare.ioTab(dialog, tab1)

    local tab2 = dialog.TabContents[2]
    TabContent.Createmost-popularTab(dialog, tab2)

    local tab3 = dialog.TabContents[3]
    TabContent.CreateIceyVeinsTab(dialog, tab3)

    local tab4 = dialog.TabContents[4]
    TabContent.CreateUggTab(dialog, tab4)

    dialog:SetMovable(true)
    dialog:EnableMouse(true)
    dialog:RegisterForDrag("LeftButton")
    dialog:SetScript("OnDragStart", dialog.StartMoving)
    dialog:SetScript("OnDragStop", dialog.StopMovingOrSizing)
    tinsert(UISpecialFrames, dialog:GetName())

    dialog:SetScript("OnShow", function()
        local classID, specID = Utils.GetPlayerClassAndSpec()
        Utils.Debug("Dialog shown - Loading saved selections")

        if not CheckDataAddonLoaded() then
            return
        end

        local savedSource, savedCategory, savedBuildKey = addon.LocalStorage.LoadSelection()
        Utils.Debug("Loaded saved selection:", savedSource, savedCategory, savedBuildKey)

        local sources = PeaversTalentsData.API.GetSources()

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

        for i, tab in ipairs(dialog.Tabs) do
            local source = i == 1 and "top-players" or i == 2 and "most-popular" or i == 3 and "community" or i == 4 and "worldwide"
            local hasData = Utils.TableContains(sources, source) and
                    PeaversTalentsData.API.GetBuilds(classID, specID, source) and
                    #PeaversTalentsData.API.GetBuilds(classID, specID, source) > 0

            if hasData then
                tab:Show()
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

function addon.ShowExportDialog()
    Utils.Debug("Showing export dialog")
    local dialog = addon.exportDialog or CreateExportDialog()
    dialog:Show()
end

function Utils.TableContains(tbl, value)
    for _, v in pairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

PeaversCommons.Events:Init(addonName, function()
    if addon.Config and addon.Config.Initialize then
        addon.Config:Initialize()
    end

    if addon.ConfigUI and addon.ConfigUI.Initialize then
        addon.ConfigUI:Initialize()
    end
    
    Utils.Debug("Initializing ButtonFix module")
    if addon.ButtonFix and addon.ButtonFix.Initialize then
        addon.ButtonFix:Initialize()
    end
    
    PeaversCommons.Events:RegisterEvent("PLAYER_ENTERING_WORLD", function()
        Utils.Debug("Player entering world")
        
        if addon.VersionCheck then
            addon.VersionCheck:Initialize()
            addon.VersionCheck:BroadcastVersion()
        end
    end)

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
    
    C_Timer.After(0.5, function()
        PeaversCommons.SettingsUI:CreateSettingsPages(
            addon,
            "PeaversTalents",
            "Peavers Talents",
            "Import and export talent builds from popular sources.",
            {
                "This addon provides talent build import/export functionality.",
                "Access it through the talent UI in-game."
            }
        )
    end)
end, {
    announceMessage = "Use |cff3abdf7/pt config|r to get started"
})
