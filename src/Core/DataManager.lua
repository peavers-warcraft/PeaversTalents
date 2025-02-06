local _, addon = ...

local Utils = addon.Utils or {}
addon.Utils = Utils

local DataManager = {}
addon.DataManager = DataManager

function DataManager.GetAvailableEntries(database, classID, specID)
    Utils.Debug("Getting entries for", classID, specID)

    local entries = {}
    if not database or not classID or not specID then
        Utils.Debug("Missing required data")
        return entries
    end

    local classTable = database[classID]
    if not classTable or not classTable.specs then
        Utils.Debug("No class table or specs found")
        return entries
    end

    local specTable = classTable.specs[specID]
    if not specTable then
        Utils.Debug("No spec table found")
        return entries
    end

    for key, data in pairs(specTable) do
        if key ~= "specs" then
            table.insert(entries, {
                key = key,
                data = data,
            })
        end
    end

    table.sort(entries, function(a, b)
        return (a.data.label or a.key) < (b.data.label or b.key)
    end)

    return entries
end

function DataManager.GetAvailableDungeons(classID, specID)
    Utils.Debug("Getting dungeons for", classID, specID)
    return DataManager.GetAvailableEntries(addon.dungeonTalents, classID, specID)
end

function DataManager.GetAvailableRaidBosses(classID, specID)
    Utils.Debug("Getting raid bosses for", classID, specID)
    return DataManager.GetAvailableEntries(addon.raidTalents, classID, specID)
end

return DataManager
