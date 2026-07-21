local _, addon = ...

-- Single source of truth for the dialog's tabs and rows. This used to live in two
-- places (TabContent's per-tab configs and Main's TAB_SOURCES), which is why adding
-- Sporefall meant hand-wiring the same raid in three files.
--
-- A row is one build picker. Rows with a `difficulties` list get a second dropdown
-- and pull their builds from whichever difficulty is selected; rows with a plain
-- `category` (Mythic+, Most Popular) have no difficulty axis and get one dropdown.
local TabConfig = {}
addon.TabConfig = TabConfig

local RAID_DIFFICULTIES = {
	{ label = "Normal", category = "normal_raid" },
	{ label = "Heroic", category = "heroic_raid" },
	{ label = "Mythic", category = "mythic_raid" },
}

local SPOREFALL_DIFFICULTIES = {
	{ label = "Normal", category = "sporefall_normal" },
	{ label = "Heroic", category = "sporefall_heroic" },
	{ label = "Mythic", category = "sporefall_mythic" },
}

-- Heroic is where most raiders actually live, so open on it rather than Normal.
local DEFAULT_DIFFICULTY = 2

TabConfig.TABS = {
	{
		label = "Top Players",
		source = "top-players",
		sections = {
			{
				-- Mythic+ has a single difficulty, so it stays a plain dungeon picker.
				key = "mythic",
				name = "Mythic+",
				category = "mythic",
			},
			{
				-- The data carries boss names but no raid name, so don't invent one.
				key = "raid",
				name = "Raid",
				difficulties = RAID_DIFFICULTIES,
				defaultDifficulty = DEFAULT_DIFFICULTY,
			},
			{
				key = "sporefall",
				name = "Sporefall",
				difficulties = SPOREFALL_DIFFICULTIES,
				defaultDifficulty = DEFAULT_DIFFICULTY,
			},
		},
	},
	{
		label = "Most Popular",
		source = "most-popular",
		sections = {
			{ key = "mythic", name = "Mythic+", category = "mythic" },
			{ key = "raid", name = "Raid", category = "raid" },
			{ key = "misc", name = "Misc", category = "misc" },
		},
	},
}

---The build category a row is currently reading from, which for a raid row depends
---on the difficulty the player has selected.
---@param section table
---@param difficultyIndex number|nil
---@return string
function TabConfig.GetCategory(section, difficultyIndex)
	if section.difficulties then
		local difficulty = section.difficulties[difficultyIndex or section.defaultDifficulty]
		return difficulty.category
	end
	return section.category
end

---Finds the difficulty slot holding `category`, so a saved selection can be mapped
---back onto the right dropdown entry.
---@return number|nil
function TabConfig.IndexOfCategory(section, category)
	if not section.difficulties then
		return nil
	end
	for index, difficulty in ipairs(section.difficulties) do
		if difficulty.category == category then
			return index
		end
	end
	return nil
end

---Unique per-row key for persistence. Rows are stored per row, not per difficulty,
---so switching difficulty doesn't lose which boss you had picked.
function TabConfig.GetPrefix(tab, section)
	return tab.source .. ":" .. section.key
end

return TabConfig
