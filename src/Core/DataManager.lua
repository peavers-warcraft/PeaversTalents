local _, addon = ...

local Utils = addon.Utils or {}
addon.Utils = Utils

local DataManager = {}
addon.DataManager = DataManager

--[[
	The data addon this release needs.

	2.0 reads categories -- lfr_raid, normal_raid, heroic_raid, mythic_raid,
	mythic -- and a single "parses" source, none of which the pre-1.0 data addon
	has. WoW's `## Dependencies:` names an addon and carries no version
	constraint, so nothing stops the two being loaded a version apart.

	Without this check that combination is silent: every call returns nil and
	every tab shows "No builds yet", which is the addon's way of saying nobody
	has logged the fight. A user would read it as the platform being empty and
	never think to update the other addon. PeaversTalentsData exposes API.VERSION
	precisely so this can be told apart, and it is worth nothing unless somebody
	reads it.

	Anything before 1.0 reported no version at all, so `(API.VERSION or 0)` is
	the whole test.
]]
local REQUIRED_DATA_API = 1

-- Once per session. This is checked on every dialog open and every spec change,
-- and a chat line repeated on each of those is its own problem.
local warned = false

---Whether PeaversTalentsData is present and new enough to read.
---@return boolean
function DataManager.CheckDataAddon()
	if not PeaversTalentsData then
		if not warned then
			warned = true
			Utils.Print("PeaversTalentsData is not installed. Talent builds come from it, " ..
				"so there is nothing to show without it.")
		end
		return false
	end

	local api = PeaversTalentsData.API
	if not api or (api.VERSION or 0) < REQUIRED_DATA_API then
		if not warned then
			warned = true
			Utils.Print("PeaversTalentsData is out of date -- this version of PeaversTalents " ..
				"needs 1.0 or newer. Update it and the builds will come back.")
		end
		return false
	end

	return true
end

local function CheckDataAddonLoaded()
	return DataManager.CheckDataAddon()
end

function DataManager.GetAvailableEntries(source, classID, specID, category)
	Utils.Debug("Getting entries for", classID, specID, "source:", source, "category:", category)

	-- First check if data addon is loaded
	if not CheckDataAddonLoaded() then
		return {}
	end

	local entries = {}
	if not source or not classID or not specID then
		Utils.Debug("Missing required data")
		return entries
	end

	-- Get builds from the data addon for this source
	local builds = PeaversTalentsData.API.GetBuilds(classID, specID, source)
	if not builds then
		Utils.Debug("No builds found")
		return entries
	end

	-- Filter builds by category if specified
	local filteredBuilds = {}
	for _, build in ipairs(builds) do
		if not category or build.category == category then
			table.insert(filteredBuilds, build)
		end
	end

	-- Create entries in the same format as before
	local orderedKeys = {}
	for _, build in ipairs(filteredBuilds) do
		if build.dungeonID then
			-- dungeonID will be our key
			table.insert(orderedKeys, build.dungeonID)
		end
	end

	-- Create entries in the same format your addon expects
	for _, dungeonID in ipairs(orderedKeys) do
		-- Find the matching build
		for _, build in ipairs(filteredBuilds) do
			if build.dungeonID == dungeonID then
				table.insert(entries, {
					key = dungeonID,
					data = {
						label = build.label,
						talentString = build.talentString,
						category = build.category -- Include category in the data
					}
				})
				break
			end
		end
	end

	return entries
end

return DataManager
