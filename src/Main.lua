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

local function CheckDataAddonLoaded()
    if not PeaversTalentsData then
        Utils.Debug("PeaversTalentsData addon not found!")
        return false
    end
    return true
end

-- Tab source definitions
local TAB_SOURCES = {
    {
        label = "Archon",
        source = "archon",
        creator = "CreateArchonTab",
        categories = {
            { category = "mythic", prefix = "archonMythic", initFunc = "InitializeArchonMythicDropdown" },
            { category = "heroic_raid", prefix = "archonHeroicRaid", initFunc = "InitializeArchonHeroicRaidDropdown" },
            { category = "mythic_raid", prefix = "archonMythicRaid", initFunc = "InitializeArchonMythicRaidDropdown" },
        }
    },
    {
        label = "Wowhead",
        source = "wowhead",
        creator = "CreateWowheadTab",
        categories = {
            { category = "mythic", prefix = "wowheadMythic", initFunc = "InitializeWowheadMythicDropdown" },
            { category = "raid", prefix = "wowheadRaid", initFunc = "InitializeWowheadRaidDropdown" },
            { category = "misc", prefix = "wowheadMisc", initFunc = "InitializeWowheadMiscDropdown" },
        }
    },
}

local function CreateExportDialog()
    local dialog = CreateFrame("Frame", "TalentExportDialog", UIParent, "DefaultPanelTemplate")
    addon.exportDialog = dialog

    dialog:SetSize(addon.Config.DIALOG.WIDTH, addon.Config.DIALOG.HEIGHT + 30)
    dialog:SetPoint("CENTER")
    dialog:SetFrameStrata("DIALOG")
    dialog:SetFrameLevel(100)

    dialog.TitleBg = UIComponents.CreateTitleBackground(dialog)
    dialog.CloseButton = UIComponents.CreateCloseButton(dialog)

    -- Create tabs and tab content for each source
    dialog.Tabs = {}
    dialog.TabContents = {}

    for i, tabInfo in ipairs(TAB_SOURCES) do
        dialog.TabContents[i] = UIComponents.CreateTabContent(dialog)
        dialog.Tabs[i] = UIComponents.CreateTab(dialog, i, tabInfo.label, "TalentExportDialogTab")
        TabContent[tabInfo.creator](dialog, dialog.TabContents[i])
    end

    PanelTemplates_SetNumTabs(dialog, #TAB_SOURCES)
    PanelTemplates_SetTab(dialog, 1)
    dialog.TabContents[1]:Show()

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

        -- Reinitialize dropdowns for all sources
        for _, sourceInfo in ipairs(TAB_SOURCES) do
            local builds = PeaversTalentsData.API.GetBuilds(classID, specID, sourceInfo.source)
            if builds and #builds > 0 then
                for _, catInfo in ipairs(sourceInfo.categories) do
                    local dropdown = dialog[catInfo.prefix .. "Dropdown"]
                    if dropdown then
                        UIDropDownMenu_Initialize(dropdown, addon.DropdownManager[catInfo.initFunc])
                    end
                end
            end
        end

        if not dialog.hideHooked then
            local isTWW = select(4, GetBuildInfo()) >= 110000
            local tf = isTWW and PlayerSpellsFrame and PlayerSpellsFrame.TalentsFrame or (ClassTalentFrame and ClassTalentFrame.TalentsTab)
            if tf then
                tf:HookScript("OnHide", function()
                    dialog:Hide()
                end)
                dialog.hideHooked = true
            end
        end
    end)

    dialog:SetScript("OnHide", function()
        dialog:ClearAllPoints()
        dialog:SetPoint("CENTER")
    end)

    dialog.fullyInitialized = true
    return dialog
end

function addon.ShowExportDialog()
    Utils.Debug("Showing export dialog")

    -- If dialog exists and was fully created, just show it
    if addon.exportDialog and addon.exportDialog.fullyInitialized then
        addon.exportDialog:Show()
        return
    end

    -- Clear any partially created dialog from a previous failed attempt
    if addon.exportDialog then
        addon.exportDialog:Hide()
        addon.exportDialog = nil
    end

    local ok, result = pcall(CreateExportDialog)
    if ok and result then
        result:Show()
    else
        -- Clear the partial dialog so next attempt starts fresh
        if addon.exportDialog then
            addon.exportDialog:Hide()
        end
        addon.exportDialog = nil
        Utils.Print("Failed to create builds dialog: " .. tostring(result))
    end
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
