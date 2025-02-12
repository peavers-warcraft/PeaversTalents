local _, addon = ...

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

    PanelTemplates_SetNumTabs(dialog, 3)
    PanelTemplates_SetTab(dialog, 1)

    -- Create tab contents
    for i = 1, 3 do
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

        -- Check if data addon is loaded
        if not CheckDataAddonLoaded() then
            return
        end

        -- Get all available sources
        local sources = PeaversTalentsData.API.GetSources()

        -- Initialize wowcompare.io dropdowns
        if Utils.TableContains(sources, "top-players") then
            local builds = PeaversTalentsData.API.GetBuilds(classID, specID, "top-players")
            if builds and #builds > 0 then
                UIDropDownMenu_Initialize(dialog.mplusDropdown, addon.DropdownManager.Initializewowcompare.ioMythicDropdown)
                UIDropDownMenu_Initialize(dialog.raidDropdown, addon.DropdownManager.Initializewowcompare.ioRaidDropdown)
            end
        end

        -- Initialize most-popular dropdowns
        if Utils.TableContains(sources, "most-popular") then
            local builds = PeaversTalentsData.API.GetBuilds(classID, specID, "most-popular")
            if builds and #builds > 0 then
                UIDropDownMenu_Initialize(dialog.most-popularMplusDropdown, addon.DropdownManager.Initializemost-popularMythicDropdown)
                UIDropDownMenu_Initialize(dialog.most-popularRaidDropdown, addon.DropdownManager.Initializemost-popularRaidDropdown)
                UIDropDownMenu_Initialize(dialog.most-popularMiscDropdown, addon.DropdownManager.Initializemost-popularMiscDropdown)
            end
        end

        -- Initialize community dropdowns
        if Utils.TableContains(sources, "community") then
            local builds = PeaversTalentsData.API.GetBuilds(classID, specID, "community")
            if builds and #builds > 0 then
                UIDropDownMenu_Initialize(dialog.communityMplusDropdown, addon.DropdownManager.InitializecommunityMythicDropdown)
                UIDropDownMenu_Initialize(dialog.communityRaidDropdown, addon.DropdownManager.InitializecommunityRaidDropdown)
                UIDropDownMenu_Initialize(dialog.communityMiscDropdown, addon.DropdownManager.InitializecommunityMiscDropdown)
            end
        end

        -- Handle tab visibility based on available data
        for i, tab in ipairs(dialog.Tabs) do
            local source = i == 1 and "top-players" or i == 2 and "most-popular" or "community"
            local hasData = Utils.TableContains(sources, source) and
                           PeaversTalentsData.API.GetBuilds(classID, specID, source) and
                           #PeaversTalentsData.API.GetBuilds(classID, specID, source) > 0

            if hasData then
                tab:Show()
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

-- Initialize events
EventHandler.Initialize()
