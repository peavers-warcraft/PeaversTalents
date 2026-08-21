local _, addon = ...

addon.Config = {
	DEBUG_ENABLED = false,
	MAINTENANCE_MODE = false,
	MAINTENANCE_MESSAGE = "parses.gg has not updated with new talent strings.\n\nThis will be back up and working shortly.",

	-- The button sitting in Blizzard's talent window. Left uncoloured on purpose:
	-- UIPanelButtonTemplate draws its own gold font and dims it for disabled and
	-- pushed states, and a |cff..| override renders flat and refuses to dim. The
	-- brand lives in the name and the tooltip carries the URL.
	BUTTON_LABEL = "Peavers Builds",

	DIALOG = {
		WIDTH = 600,
		-- One row per tab: Raid (with a difficulty dropdown) and Mythic+. The raid
		-- used to need a row each for M+, Raid and Sporefall, because the data
		-- arrived one file per raid; builds carry their raid now, so every raid
		-- being run shares the one picker.
		--
		-- Sized so the footer sits just under the last row, from TabContent's own
		-- vertical constants, which this has to stay in step with:
		--   FIRST_SECTION_Y 12 + 1 x SECTION_HEIGHT 74 = 86 of content,
		--   plus the 26 of chrome the previous 260 left around 3 x 74.
		HEIGHT = 112,
		TITLE_HEIGHT = 24,
		IMPORT_BUTTON = {
			WIDTH = 100,
			HEIGHT = 22,
			-- Breathing room either side of the label when it outgrows WIDTH.
			TEXT_PADDING = 24
		},
		PADDING = {
			SIDE = 15
		}
	}
}
