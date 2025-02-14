local _, addon = ...

local Utils = addon.Utils
local LocalStorage = {}
addon.LocalStorage = LocalStorage

local function InitializeDB()
    if not PeaversTalentsDB then
        PeaversTalentsDB = {
            characters = {}
        }
    end
end

local function GetCharacterDB()
    InitializeDB()

    local characterName = Utils.GetPlayerInfo()
    if not PeaversTalentsDB.characters[characterName] then
        PeaversTalentsDB.characters[characterName] = {
            specs = {}
        }
    end

    return PeaversTalentsDB.characters[characterName]
end

local function GetSelectionKey(source, category)
    return source .. "_" .. category
end

function LocalStorage.SaveSelection(source, category, buildKey)
    Utils.Debug("SaveSelection called with:", source, category, buildKey)

    if not source or not category or not buildKey then
        Utils.Debug("SaveSelection: Missing required parameters")
        return false
    end

    local characterDB = GetCharacterDB()
    local _, specID = Utils.GetPlayerClassAndSpec()

    if not specID then
        Utils.Debug("SaveSelection: No spec ID found")
        return false
    end

    -- Initialize spec structure if needed
    if not characterDB.specs[specID] then
        characterDB.specs[specID] = {
            selections = {}
        }
    elseif not characterDB.specs[specID].selections then
        characterDB.specs[specID].selections = {}
    end

    -- Save selection under unique key for this source/category combination
    local selectionKey = GetSelectionKey(source, category)
    characterDB.specs[specID].selections[selectionKey] = {
        source = source,
        category = category,
        buildKey = buildKey
    }

    Utils.Debug("Saved selection for", selectionKey, ":", source, category, buildKey)
    return true
end

function LocalStorage.LoadSelection(source, category)
    local characterDB = GetCharacterDB()
    local _, specID = Utils.GetPlayerClassAndSpec()

    if not specID then
        Utils.Debug("LoadSelection: No spec ID found")
        return nil
    end

    local specData = characterDB.specs[specID]
    if not specData or not specData.selections then
        Utils.Debug("LoadSelection: No saved selections found for spec", specID)
        return nil
    end

    local selectionKey = GetSelectionKey(source, category)
    local savedSelection = specData.selections[selectionKey]

    if savedSelection then
        Utils.Debug("Found saved selection for", selectionKey, ":", savedSelection.source, savedSelection.category, savedSelection.buildKey)
        return savedSelection.source, savedSelection.category, savedSelection.buildKey
    end

    Utils.Debug("No saved selection found for", selectionKey)
    return nil
end

return LocalStorage
