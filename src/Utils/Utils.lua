local _, addon = ...
local Utils = addon.Utils or {}
addon.Utils = Utils

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
	if addon.Config.DEBUG_ENABLED then
		print("|cFF00FF00[TalentDebug]|r", ...)
	end
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

return Utils
