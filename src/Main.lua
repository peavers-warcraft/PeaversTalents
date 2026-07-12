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
            { category = "normal_raid", prefix = "archonNormalRaid", initFunc = "InitializeArchonNormalRaidDropdown" },
            { category = "heroic_raid", prefix = "archonHeroicRaid", initFunc = "InitializeArchonHeroicRaidDropdown" },
            { category = "mythic_raid", prefix = "archonMythicRaid", initFunc = "InitializeArchonMythicRaidDropdown" },
            { category = "sporefall", prefix = "archonSporefall", initFunc = "InitializeArchonSporefallDropdown" },
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

-- Re-initializes every dropdown in the export dialog using the current
-- class/spec. Called on dialog show, on spec change, and on entering world.
-- Always re-runs InitializeDropdown for each dropdown so empty specs show
-- "No data found" instead of stale entries from the previous spec.
function addon.RefreshDialogDropdowns()
    local dialog = addon.exportDialog
    if not dialog then return end
    if not CheckDataAddonLoaded() then return end

    local classID, specID = Utils.GetPlayerClassAndSpec()
    Utils.Debug("Refreshing dropdowns for classID:", classID, "specID:", specID)

    for _, sourceInfo in ipairs(TAB_SOURCES) do
        for _, catInfo in ipairs(sourceInfo.categories) do
            local dropdown = dialog[catInfo.prefix .. "Dropdown"]
            if dropdown then
                UIDropDownMenu_Initialize(dropdown, addon.DropdownManager[catInfo.initFunc])
            end
        end
    end
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
        Utils.Debug("Dialog shown - Loading saved selections")
        addon.RefreshDialogDropdowns()

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
    
    _G.SLASH_PEAVERSTALENTS1 = "/peaverstalents"
    _G.SLASH_PEAVERSTALENTS2 = "/pt"
    SlashCmdList["PEAVERSTALENTS"] = function()
        addon.ShowExportDialog()
    end
    
    PeaversCommons.Events:RegisterEvent("PLAYER_ENTERING_WORLD", function()
        Utils.Debug("Player entering world")
        -- Refresh dropdowns once the spec API is reliable (safety net for the
        -- ADDON_LOADED race where GetSpecialization may return 0/nil).
        if addon.exportDialog and addon.exportDialog:IsShown() then
            addon.RefreshDialogDropdowns()
        end
    end)

    -- Re-initialize dropdowns when the player changes spec, so an already-open
    -- export dialog shows builds for the new spec instead of stale entries.
    PeaversCommons.Events:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED", function()
        Utils.Debug("Player specialization changed")
        if addon.exportDialog and addon.exportDialog:IsShown() then
            addon.RefreshDialogDropdowns()
        end
    end)
    
    C_Timer.After(0.5, function()
        PeaversCommons.SettingsUI:CreateRedirectPage(addon, "PeaversTalents", "Peavers Talents")
    end)

    -- Register with PeaversConfig registry
    if PeaversCommons.ConfigRegistry then
        PeaversCommons.ConfigRegistry:Register({
            name = "PeaversTalents",
            displayName = "Talents",
            description = "Talent build import/export from popular sources",
            addonRef = addon,
            pages = addon.ConfigUI:GetPages(),
            order = 12,
        })
    end
end, {
    suppressAnnouncement = true
})
