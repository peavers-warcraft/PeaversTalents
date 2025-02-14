local _, addon = ...

local Utils = addon.Utils
local DataManager = addon.DataManager

local DropdownManager = addon.DropdownManager or {}
addon.DropdownManager = DropdownManager

local function InitializeDropdown(frame, level, source, category, editBox)
    Utils.Debug("Initializing dropdown for source:", source, "category:", category)

    if not editBox then
        Utils.Debug("No editBox provided for dropdown")
        return
    end

    local info = UIDropDownMenu_CreateInfo()
    local classID, specID = Utils.GetPlayerClassAndSpec()
    local entries = DataManager.GetAvailableEntries(source, classID, specID, category)

    -- Check if there's no data
    if #entries == 0 then
        info.text = "No data found"
        info.disabled = true
        info.notClickable = true
        UIDropDownMenu_AddButton(info, level)
        UIDropDownMenu_SetText(frame, "No data found")
        UIDropDownMenu_DisableDropDown(frame)
        return
    end

    -- Load saved selection for this source/category
    local savedSource, savedCategory, savedBuildKey = addon.LocalStorage.LoadSelection(source, category)
    Utils.Debug("Loaded selection:", savedSource, savedCategory, savedBuildKey)

    -- If we have a saved selection, find and apply it
    if savedBuildKey then
        Utils.Debug("Looking for saved build:", savedBuildKey)
        for _, entry in ipairs(entries) do
            if entry.key == savedBuildKey then
                Utils.Debug("Found saved build:", entry.data.label)
                editBox:SetText(entry.data.talentString or "")
                editBox:SetCursorPosition(0)
                UIDropDownMenu_SetText(frame, entry.data.label or tostring(savedBuildKey))
                break
            end
        end
    else
        UIDropDownMenu_SetText(frame, "Select...")
    end

    info.func = function(self)
        local key = self.value
        Utils.Debug("User made dropdown selection - source:", source, "category:", category, "key:", key)

        for _, entry in ipairs(entries) do
            if entry.key == key then
                editBox:SetText(entry.data.talentString or "")
                editBox:SetCursorPosition(0)
                UIDropDownMenu_SetText(frame, entry.data.label or tostring(key))

                Utils.Debug("Saving selection to local storage")
                addon.LocalStorage.SaveSelection(source, category, key)
                break
            end
        end
    end

    for _, entry in ipairs(entries) do
        info.text = entry.data.label or entry.key
        info.value = entry.key
        info.disabled = false
        info.notClickable = false
        info.checked = (UIDropDownMenu_GetText(frame) == info.text)
        UIDropDownMenu_AddButton(info, level)
    end

    UIDropDownMenu_EnableDropDown(frame)
end

-- Update dropdown initializers with categories
function DropdownManager.Initializewowcompare.ioMythicDropdown(frame, level)
    InitializeDropdown(frame, level, "top-players", "mythic", addon.exportDialog.wowcompare.ioMythicEdit)
end

function DropdownManager.Initializewowcompare.ioRaidDropdown(frame, level)
    InitializeDropdown(frame, level, "top-players", "raid", addon.exportDialog.wowcompare.ioRaidEdit)
end

function DropdownManager.Initializemost-popularMythicDropdown(frame, level)
    InitializeDropdown(frame, level, "most-popular", "mythic", addon.exportDialog.most-popularMythicEdit)
end

function DropdownManager.Initializemost-popularRaidDropdown(frame, level)
    InitializeDropdown(frame, level, "most-popular", "raid", addon.exportDialog.most-popularRaidEdit)
end

function DropdownManager.Initializemost-popularMiscDropdown(frame, level)
    InitializeDropdown(frame, level, "most-popular", "misc", addon.exportDialog.most-popularMiscEdit)
end

function DropdownManager.InitializecommunityMythicDropdown(frame, level)
    InitializeDropdown(frame, level, "community", "mythic", addon.exportDialog.communityMythicEdit)
end

function DropdownManager.InitializecommunityRaidDropdown(frame, level)
    InitializeDropdown(frame, level, "community", "raid", addon.exportDialog.communityRaidEdit)
end

function DropdownManager.InitializecommunityMiscDropdown(frame, level)
    InitializeDropdown(frame, level, "community", "misc", addon.exportDialog.communityMiscEdit)
end

function DropdownManager.InitializeUggMythicDropdown(frame, level)
    InitializeDropdown(frame, level, "worldwide", "mythic", addon.exportDialog.uggMythicEdit)
end

function DropdownManager.InitializeUggRaidDropdown(frame, level)
    InitializeDropdown(frame, level, "worldwide", "raid", addon.exportDialog.uggRaidEdit)
end

return DropdownManager
