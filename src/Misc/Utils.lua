local addonName, addonTable = ...
local Utils = addonTable.Utils or {}
addonTable.Utils = Utils

---Gets formatted player information
Utils.GetPlayerInfo = function()
	local playerName, playerRealm = UnitFullName("player")
	playerRealm = playerRealm or GetRealmName()
	local fullPlayerName = playerName .. "-" .. playerRealm
	local playerClass, playerClassID = UnitClass("player")

	local specIndex = GetSpecialization()
	local specName = specIndex and select(2, GetSpecializationInfo(specIndex)) or "None"

	return fullPlayerName, playerClass, playerClassID, specName
end

---Converts UTC timestamp to local time string
Utils.GetFormattedLocalTime = function(timestamp)
	local year, month, day, hour, min, sec = timestamp:match("(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)")

	local dateStr = FormatShortDate(tonumber(month), tonumber(day), tonumber(year))
	local timeStr = GameTime_GetFormattedTime(tonumber(hour), tonumber(min), true)

	return string.format("%s %s", dateStr, timeStr)
end

return Utils
