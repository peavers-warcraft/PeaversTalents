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

local function CreateExportDialog()
    local dialog = CreateFrame("Frame", "TalentExportDialog", UIParent, "DefaultPanelTemplate")
    addon.exportDialog = dialog

    dialog:SetSize(addon.Config.DIALOG.WIDTH, addon.Config.DIALOG.HEIGHT + 30)
    dialog:SetPoint("CENTER")
    dialog:SetFrameStrata("DIALOG")
    dialog:SetFrameLevel(100)

    dialog.TitleBg = UIComponents.CreateTitleBackground(dialog)
    dialog.CloseButton = UIComponents.CreateCloseButton(dialog)

    dialog.TabContents = {}
    dialog.TabContents[1] = UIComponents.CreateTabContent(dialog)
    dialog.TabContents[1]:Show()
    TabContent.CreateArchonTab(dialog, dialog.TabContents[1])

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

        local builds = PeaversTalentsData.API.GetBuilds(classID, specID, "archon")
        if builds and #builds > 0 then
            for _, category in ipairs({"mythic", "heroic_raid", "mythic_raid"}) do
                local dropdownName = "archon" .. category:gsub("_", ""):gsub("^%l", string.upper):gsub("raid", "Raid") .. "Dropdown"
                local dropdown = dialog[dropdownName]
                if dropdown then
                    local initFuncName = "InitializeArchon" .. category:gsub("_", ""):gsub("^%l", string.upper):gsub("raid", "Raid") .. "Dropdown"
                    UIDropDownMenu_Initialize(dropdown, addon.DropdownManager[initFuncName])

                    if savedSource == "archon" and savedCategory == category then
                        Utils.Debug("Found matching dropdown for saved selection:", dropdownName)
                        for _, build in ipairs(builds) do
                            if build.dungeonID == savedBuildKey then
                                local editBoxName = "archon" .. category:gsub("_", ""):gsub("^%l", string.upper):gsub("raid", "Raid") .. "Edit"
                                local editBox = dialog[editBoxName]
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
