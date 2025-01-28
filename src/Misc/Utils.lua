local addonName, addonTable = ...
local Utils = addonTable.Utils or {}
addonTable.Utils = Utils

---Gets formatted player information
Utils.GetPlayerInfo = function()
	local playerName, playerRealm = UnitFullName("player")
	playerRealm = playerRealm or GetRealmName()
	local fullPlayerName = playerName .. "-" .. playerRealm
	local _, player	Class, playerClassID = UnitClass("player")

	local specIndex = GetSpecialization()
	local specName = specIndex and select(2, GetSpecializationInfo(specIndex)) or "None"

	return fullPlayerName, playerClass, playerClassID, specName
end

return Utils
