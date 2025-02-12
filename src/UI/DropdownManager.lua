local _, addon = ...

local Utils = addon.Utils
local DataManager = addon.DataManager

local DropdownManager = addon.DropdownManager or {}
addon.DropdownManager = DropdownManager

local function InitializeDropdown(self, level, database, editBox, talentsKey)
	local info = UIDropDownMenu_CreateInfo()
	local classID, specID = Utils.GetPlayerClassAndSpec()
	local entries = DataManager.GetAvailableEntries(database, classID, specID)

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

	info.func = function(button)
		local key = button.value
		local classID, specID = Utils.GetPlayerClassAndSpec()

        Utils.Debug("Selected key:", key)

        if database[classID] and
            database[classID].specs and
            database[classID].specs[specID] then
            local data = database[classID].specs[specID][key]
            if data then
                editBox:SetText(data[talentsKey] or "")
                editBox:SetCursorPosition(0)
                UIDropDownMenu_SetText(self, data.label or key)
            end
        end
    end

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

function DropdownManager.Initializewowcompare.ioMythicDropdown(self, level)
    InitializeDropdown(self, level, addon.TopPlayersMythicDB, addon.exportDialog.mplusEdit, "talentString")
end

function DropdownManager.Initializewowcompare.ioRaidDropdown(self, level)
    InitializeDropdown(self, level, addon.TopPlayersRaidDB, addon.exportDialog.raidEdit, "talentString")
end

function DropdownManager.Initializemost-popularMythicDropdown(self, level)
    InitializeDropdown(self, level, addon.MostPopularMythicDB, addon.exportDialog.most-popularMplusEdit, "talentString")
end

function DropdownManager.Initializemost-popularRaidDropdown(self, level)
    InitializeDropdown(self, level, addon.MostPopularRaidDB, addon.exportDialog.most-popularRaidEdit, "talentString")
end

function DropdownManager.Initializemost-popularMiscDropdown(self, level)
    InitializeDropdown(self, level, addon.MostPopularMiscDB, addon.exportDialog.most-popularMiscEdit, "talentString")
end

function DropdownManager.InitializecommunityMythicDropdown(self, level)
    InitializeDropdown(self, level, addon.CommunityMythicDB, addon.exportDialog.communityMplusEdit, "talentString")
end

function DropdownManager.InitializecommunityRaidDropdown(self, level)
    InitializeDropdown(self, level, addon.CommunityRaidDB, addon.exportDialog.communityRaidEdit, "talentString")
end

function DropdownManager.InitializecommunityMiscDropdown(self, level)
    InitializeDropdown(self, level, addon.CommunityMiscDB, addon.exportDialog.communityMiscEdit, "talentString")
end

return DropdownManager
