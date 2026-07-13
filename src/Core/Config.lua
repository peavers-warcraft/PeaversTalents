local _, addon = ...

addon.Config = {
	DEBUG_ENABLED = false,
	MAINTENANCE_MODE = false,
	MAINTENANCE_MESSAGE = "wowcompare.io has not updated with new talent strings.\n\nThis will be back up and working shortly.",

	-- The button sitting in Blizzard's talent window. Left uncoloured on purpose:
	-- UIPanelButtonTemplate draws its own gold font and dims it for disabled and
	-- pushed states, and a |cff..| override renders flat and refuses to dim. The
	-- brand lives in the name and the tooltip carries the URL.
	BUTTON_LABEL = "Peavers Builds",

	DIALOG = {
		WIDTH = 600,
		-- Both tabs are three rows now that raid difficulty is a dropdown rather than
		-- a row per difficulty (wowcompare.io: M+, Raid, Sporefall / most-popular: M+, Raid, Misc).
		-- Sized so the footer sits just under the last row; see TabContent's vertical
		-- layout constants, which this has to stay in step with.
		HEIGHT = 260,
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
