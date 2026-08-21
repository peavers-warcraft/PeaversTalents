local _, addon = ...

-- Single source of truth for the dialog's tabs and rows. This used to live in two
-- places (TabContent's per-tab configs and Main's TAB_SOURCES), which is why adding
-- Sporefall meant hand-wiring the same raid in three files.
--
-- That complaint has been answered from the other end: builds now carry the raid
-- they came from, so a raid is never wired here at all.
--
-- A row is one build picker. Rows with a `difficulties` list get a second dropdown
-- and pull their builds from whichever difficulty is selected; rows with a plain
-- `category` (Mythic+) have no difficulty axis and get one dropdown.
local TabConfig = {}
addon.TabConfig = TabConfig

-- Difficulties, in the order a raider climbs them. LFR is here because it is
-- where the field currently is: it carries more specs than any other difficulty,
-- and leaving it out would throw away the best-covered data we have.
local RAID_DIFFICULTIES = {
	{ label = "LFR", category = "lfr_raid" },
	{ label = "Normal", category = "normal_raid" },
	{ label = "Heroic", category = "heroic_raid" },
	{ label = "Mythic", category = "mythic_raid" },
}

-- Heroic is where most raiders live, so open on it rather than LFR.
local DEFAULT_DIFFICULTY = 3

--[[
	One tab, because there is one source.

	This used to be two -- "Top Players" from Archon and "Most Popular" from
	Wowhead -- with a per-raid section under each. Archon asked that we stop
	using their data and Wowhead went with them, so the source axis has nothing
	left to distinguish and the tab bar would be a single tab labelled after a
	website.

	The per-raid sections are gone for a different reason. They existed because
	the old data arrived one file per raid, so Sporefall needed its own section,
	its own databases and its own scrapers -- the comment that used to sit here
	complained about wiring the same raid in three files. Builds now carry the
	raid they came from, so a difficulty holds every raid being run and the rows
	group themselves. A new raid needs nothing here.
]]
TabConfig.TABS = {
	{
		label = "Raid",
		source = "parses",
		sections = {
			{
				key = "raid",
				name = "Raid",
				difficulties = RAID_DIFFICULTIES,
				defaultDifficulty = DEFAULT_DIFFICULTY,
			},
		},
	},
	{
		label = "Mythic+",
		source = "parses",
		sections = {
			-- Keys are addressed by band rather than by level, and a band is
			-- data on a row like a raid is, so this needs no entry per band.
			{ key = "mythic", name = "Mythic+", category = "mythic" },
		},
	},
}

---What to say when a category has nothing in it.
---
---One message, where there used to be two. Mythic+ had its own -- "parses.gg
---does not index keystone runs yet" -- which was true when it was written and
---stopped being true on 2026-08-20, when the coverage read that had been
---silently failing since 2026-08-03 was fixed and keys turned out to have been
---there the whole time.
---
---There is nothing left for a second message to say. An empty Mythic+ now means
---exactly what an empty raid difficulty means: nobody has logged that spec at
---that band yet, and it fills in when somebody does. Keeping the distinction
---would mean keeping a sentence about the platform that only the platform can
---make false again.
---@return string
function TabConfig.EmptyMessage()
	return "No builds for this spec here yet. Builds come from parses.gg uploads, "
		.. "so this fills in as people log runs."
end

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
