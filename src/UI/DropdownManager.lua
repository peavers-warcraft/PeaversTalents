local _, addon = ...

local Utils = addon.Utils
local DataManager = addon.DataManager

local DropdownManager = addon.DropdownManager or {}
addon.DropdownManager = DropdownManager

local function InitializeDropdown(self, level, source, category, editBox)
    local info = UIDropDownMenu_CreateInfo()
    local classID, specID = Utils.GetPlayerClassAndSpec()
    local entries = DataManager.GetAvailableEntries(source, classID, specID, category)

    -- Check if there's no data
    if #entries == 0 then
        info.text = "No data found"
        info.disabled = true
        info.notClickable = true
        UIDropDownMenu_AddButton(info, level)
        UIDropDownMenu_SetText(self, "No data found")
        UIDropDownMenu_DisableDropDown(self)
        return
    end

    -- Set initial "Select" text if no selection has been made
    if UIDropDownMenu_GetText(self) == "" or UIDropDownMenu_GetText(self) == nil then
        UIDropDownMenu_SetText(self, "Select...")
    end

    info.func = function(button)
        local key = button.value
        Utils.Debug("Selected key:", key)

        -- Since we already have the entries, find the matching one
        for _, entry in ipairs(entries) do
            if entry.key == key then
                editBox:SetText(entry.data.talentString or "")
                editBox:SetCursorPosition(0)
                UIDropDownMenu_SetText(self, entry.data.label or tostring(key))
                break
            end
        end
    end

    -- Sort entries by name if label exists
    table.sort(entries, function(a, b)
        if a.data.label and b.data.label then
            return a.data.label < b.data.label
        end
        return a.key < b.key
    end)

    for _, entry in ipairs(entries) do
        info.text = entry.data.label or entry.key
        info.value = entry.key
        info.disabled = false
        info.notClickable = false
        info.checked = (UIDropDownMenu_GetText(self) == info.text)
        UIDropDownMenu_AddButton(info, level)
    end

    UIDropDownMenu_EnableDropDown(self)
end

-- Update dropdown initializers with categories
function DropdownManager.Initializewowcompare.ioMythicDropdown(self, level)
    InitializeDropdown(self, level, "top-players", "mythic", addon.exportDialog.wowcompare.ioMythicEdit)
end

function DropdownManager.Initializewowcompare.ioRaidDropdown(self, level)
    InitializeDropdown(self, level, "top-players", "raid", addon.exportDialog.wowcompare.ioRaidEdit)
end

function DropdownManager.Initializemost-popularMythicDropdown(self, level)
    InitializeDropdown(self, level, "most-popular", "mythic", addon.exportDialog.most-popularMythicEdit)
end

function DropdownManager.Initializemost-popularRaidDropdown(self, level)
    InitializeDropdown(self, level, "most-popular", "raid", addon.exportDialog.most-popularRaidEdit)
end

function DropdownManager.Initializemost-popularMiscDropdown(self, level)
    InitializeDropdown(self, level, "most-popular", "misc", addon.exportDialog.most-popularMiscEdit)
end

function DropdownManager.InitializecommunityMythicDropdown(self, level)
    InitializeDropdown(self, level, "community", "mythic", addon.exportDialog.communityMythicEdit)
end

function DropdownManager.InitializecommunityRaidDropdown(self, level)
    InitializeDropdown(self, level, "community", "raid", addon.exportDialog.communityRaidEdit)
end

function DropdownManager.InitializecommunityMiscDropdown(self, level)
    InitializeDropdown(self, level, "community", "misc", addon.exportDialog.communityMiscEdit)
end

function DropdownManager.InitializeUggMythicDropdown(self, level)
    InitializeDropdown(self, level, "worldwide", "mythic", addon.exportDialog.uggMythicEdit)
end

function DropdownManager.InitializeUggRaidDropdown(self, level)
    InitializeDropdown(self, level, "worldwide", "raid", addon.exportDialog.uggRaidEdit)
end

return DropdownManager
