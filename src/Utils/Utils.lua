local _, addon = ...
local Utils = addon.Utils or {}
addon.Utils = Utils

-- Access the PeaversCommons library
local PeaversCommons = _G.PeaversCommons

function Utils.GetPlayerInfo()
	local playerName, playerRealm = UnitFullName("player")
	playerRealm = playerRealm or GetRealmName()
	local fullPlayerName = playerName .. "-" .. playerRealm
	local _, _, playerClassID = UnitClass("player")

	local specIndex = GetSpecialization()
	local specName = specIndex and select(2, GetSpecializationInfo(specIndex)) or "None"

	return fullPlayerName, nil, playerClassID, specName
end

function Utils.Debug(...)
	if addon.Config and addon.Config.DEBUG_ENABLED then
		PeaversCommons.Utils.Debug(addon, ...)
	end
end

function Utils.Print(...)
    PeaversCommons.Utils.Print(addon, ...)
end

function Utils.GetPlayerClassAndSpec()
	local _, _, playerClassID = Utils.GetPlayerInfo()
	local currentSpecIndex = GetSpecialization()
	local specID = currentSpecIndex and GetSpecializationInfo(currentSpecIndex)
	Utils.Debug("Class ID:", playerClassID, "Spec ID:", specID)
	return playerClassID, specID
end

function Utils.GetFormattedLocalTime(timestamp)
	local year, month, day, hour, min, sec = timestamp:match("(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)")

	local dateStr = FormatShortDate(tonumber(month), tonumber(day), tonumber(year))
	local timeStr = GameTime_GetFormattedTime(tonumber(hour), tonumber(min), true)

	return string.format("%s %s", dateStr, timeStr)
end

-- Format update time from the data API
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

return Utils
