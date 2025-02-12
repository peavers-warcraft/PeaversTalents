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

    -- Create an ordered list of keys while preserving their original type
    local orderedKeys = {}
    for key in pairs(specTable) do
        if key ~= "specs" then
            table.insert(orderedKeys, key)
        end
    end

    -- Sort numerically but preserve key types
    table.sort(orderedKeys, function(a, b)
        return tonumber(a) < tonumber(b)
    end)

    -- Insert entries in the correct order while preserving original key type
    for _, key in ipairs(orderedKeys) do
        table.insert(entries, {
            key = key,  -- Keep the original key type
            data = specTable[key],
        })
    end

    return entries
end

return DataManager
