local _, addon = ...

local Utils = addon.Utils or {}
addon.Utils = Utils

local DataManager = {}
addon.DataManager = DataManager

local function CheckDataAddonLoaded()
	if not PeaversTalentsData then
		Utils.Print("PeaversTalentsData addon not found!")
		return false
	end
	return true
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

-- function to get builds for a specific category
function DataManager.GetCategoryBuilds(source, classID, specID, category)
	if not source or not category then
		return {}
	end
	return DataManager.GetAvailableEntries(source, classID, specID, category)
end

-- Helper function to get available categories
function DataManager.GetAvailableCategories()
	if not CheckDataAddonLoaded() then
		return {}
	end

	return { "mythic", "heroic_raid", "mythic_raid" }
end

function DataManager.GetLastUpdate(source, category)
	if not CheckDataAddonLoaded() then
		return nil
	end

	local updates = PeaversTalentsData.API.GetLastUpdate(source)
	if not updates or not updates[source] then
		return nil
	end

	if category then
		return updates[source][category]
	end

	-- If no category specified, return the most recent update
	local latestUpdate = nil
	for _, timestamp in pairs(updates[source]) do
		if timestamp and (not latestUpdate or timestamp > latestUpdate) then
			latestUpdate = timestamp
		end
	end

	return latestUpdate
end

function DataManager.GetAvailableDungeons()
	if CheckDataAddonLoaded() then
		return PeaversTalentsData.API.GetDungeons()
	end
	return {}
end

return DataManager
