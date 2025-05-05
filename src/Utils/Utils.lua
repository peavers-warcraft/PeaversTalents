local _, addon = ...
local Utils = addon.Utils or {}
addon.Utils = Utils

-- Access the PeaversCommons library
local PeaversCommons = _G.PeaversCommons
local CommonUtils = PeaversCommons.Utils

-- Redirect common utility functions to PeaversCommons
function Utils.GetPlayerInfo()
    local playerInfo = CommonUtils.GetPlayerInfo()
    return playerInfo.fullName, nil, playerInfo.classID, playerInfo.specName
end

function Utils.Debug(...)
    if addon.Config and addon.Config.DEBUG_ENABLED then
        CommonUtils.Debug(addon, ...)
    end
end

function Utils.Print(...)
    CommonUtils.Print(addon, ...)
end

function Utils.GetPlayerClassAndSpec()
    local playerInfo = CommonUtils.GetPlayerInfo()
    Utils.Debug("Class ID:", playerInfo.classID, "Spec ID:", playerInfo.specID)
    return playerInfo.classID, playerInfo.specID
end

-- Format a local time from a timestamp
function Utils.GetFormattedLocalTime(timestamp)
    local year, month, day, hour, min, sec = timestamp:match("(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)")

    local dateStr = FormatShortDate(tonumber(month), tonumber(day), tonumber(year))
    local timeStr = GameTime_GetFormattedTime(tonumber(hour), tonumber(min), true)

    return string.format("%s %s", dateStr, timeStr)
end

-- Format update time from the data API (specific to PeaversTalents)
function Utils.GetFormattedUpdate(source)
    if not source then return "Unknown" end

    local updates = PeaversTalentsData.API.GetLastUpdate(source)
    if not updates or not updates[source] then
        return "Unknown"
    end

    -- Get the most recent update time from any category
    local latestUpdate = nil
    for _, timestamp in pairs(updates[source]) do
        if timestamp and (not latestUpdate or timestamp > latestUpdate) then
            latestUpdate = timestamp
        end
    end

    if not latestUpdate then
        return "Unknown"
    end

    return Utils.GetFormattedLocalTime(latestUpdate)
end

-- Add more utility functions that redirect to PeaversCommons
function Utils.TableContains(table, value)
    return CommonUtils.TableContains(table, value)
end

function Utils.TableCount(table)
    return CommonUtils.TableCount(table)
end

function Utils.Round(value, decimals)
    return CommonUtils.Round(value, decimals)
end

function Utils.FormatNumber(number)
    return CommonUtils.FormatNumber(number)
end

function Utils.FormatPercent(value, decimals)
    return CommonUtils.FormatPercent(value, decimals)
end

function Utils.FormatTime(seconds)
    return CommonUtils.FormatTime(seconds)
end

return Utils
