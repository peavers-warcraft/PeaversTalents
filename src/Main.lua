local addonName, addon = ...

-- Check for PeaversCommons
local PeaversCommons = _G.PeaversCommons
if not PeaversCommons then
    print("|cffff0000Error:|r " .. addonName .. " requires PeaversCommons to work properly.")
    return
end

-- Check for required PeaversCommons modules
local requiredModules = {"Events", "ConfigUIUtils", "FrameUtils"}
for _, module in ipairs(requiredModules) do
    if not PeaversCommons[module] then
        print("|cffff0000Error:|r " .. addonName .. " requires PeaversCommons." .. module .. " which is missing.")
        return
    end
end

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

local ButtonFix = addon.ButtonFix or {}
addon.ButtonFix = ButtonFix

-- Tab configuration: index -> source name and tab creator
local TAB_SOURCES = {
    [1] = { source = "archon",  label = "Archon",  creator = "CreateArchonTab" },
    [2] = { source = "wowhead", label = "Wowhead", creator = "CreateWowheadTab" },
}

-- Source -> categories and their dropdown/editbox naming conventions
local SOURCE_CATEGORIES = {
    archon = {
        { category = "mythic",      prefix = "archonMythic",     initFunc = "InitializeArchonMythicDropdown" },
        { category = "heroic_raid", prefix = "archonHeroicRaid", initFunc = "InitializeArchonHeroicRaidDropdown" },
        { category = "mythic_raid", prefix = "archonMythicRaid", initFunc = "InitializeArchonMythicRaidDropdown" },
    },
    wowhead = {
        { category = "mythic", prefix = "wowheadMythic", initFunc = "InitializeWowheadMythicDropdown" },
        { category = "raid",   prefix = "wowheadRaid",   initFunc = "InitializeWowheadRaidDropdown" },
        { category = "misc",   prefix = "wowheadMisc",   initFunc = "InitializeWowheadMiscDropdown" },
    },
}

local function CheckDataAddonLoaded()
    if not PeaversTalentsData then
        Utils.Debug("PeaversTalentsData addon not found!")
        return false
    end
    return true
end

local function TableContains(tbl, value)
    for _, v in pairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
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

    -- Create tabs
    dialog.Tabs = {}
    dialog.TabContents = {}

    for i, tabInfo in ipairs(TAB_SOURCES) do
        dialog.Tabs[i] = UIComponents.CreateTab(dialog, i, tabInfo.label)
        dialog.TabContents[i] = UIComponents.CreateTabContent(dialog)
    end

    PanelTemplates_SetNumTabs(dialog, #TAB_SOURCES)
    PanelTemplates_SetTab(dialog, 1)

    -- Show first tab, create content for all tabs
    dialog.TabContents[1]:Show()
    for i, tabInfo in ipairs(TAB_SOURCES) do
        TabContent[tabInfo.creator](dialog, dialog.TabContents[i])
        if i > 1 then
            dialog.TabContents[i]:Hide()
        end
    end

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

        -- Initialize dropdowns for all sources that have data
        for sourceName, categories in pairs(SOURCE_CATEGORIES) do
            if TableContains(sources, sourceName) then
                local builds = PeaversTalentsData.API.GetBuilds(classID, specID, sourceName)
                if builds and #builds > 0 then
                    for _, cat in ipairs(categories) do
                        local dropdown = dialog[cat.prefix .. "Dropdown"]
                        if dropdown and addon.DropdownManager[cat.initFunc] then
                            UIDropDownMenu_Initialize(dropdown, addon.DropdownManager[cat.initFunc])

                            -- Restore saved selection if it matches
                            if savedSource == sourceName and savedCategory == cat.category then
                                for _, build in ipairs(builds) do
                                    if build.dungeonID == savedBuildKey then
                                        local editBox = dialog[cat.prefix .. "Edit"]
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

        -- Show/hide tabs based on data availability, select saved source tab
        for i, tabInfo in ipairs(TAB_SOURCES) do
            local hasData = TableContains(sources, tabInfo.source) and
                    PeaversTalentsData.API.GetBuilds(classID, specID, tabInfo.source) and
                    #PeaversTalentsData.API.GetBuilds(classID, specID, tabInfo.source) > 0

            if hasData then
                dialog.Tabs[i]:Show()
                if tabInfo.source == savedSource then
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
                dialog.Tabs[i]:Hide()
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

    SLASH_PEAVERSTALENTS1 = "/peaverstalents"
    SLASH_PEAVERSTALENTS2 = "/pt"
    SlashCmdList["PEAVERSTALENTS"] = function()
        addon.ShowExportDialog()
    end

    PeaversCommons.Events:RegisterEvent("PLAYER_ENTERING_WORLD", function()
        Utils.Debug("Player entering world")
    end)

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
    suppressAnnouncement = true
})
