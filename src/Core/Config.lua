local _, addon = ...

addon.Config = {
	DEBUG_ENABLED = false,
	MAINTENANCE_MODE = false,
	MAINTENANCE_MESSAGE = "wowcompare.io has not updated with new talent strings.\n\nThis will be back up and working shortly.",

	DIALOG = {
		WIDTH = 600,
		-- Sized to fit the wowcompare.io tab's stacked sections (M+, 3 raid difficulties,
		-- 3 Sporefall difficulties). ~69px per section plus the footer instructions.
		HEIGHT = 545,
		TITLE_HEIGHT = 24,
		IMPORT_BUTTON = {
			WIDTH = 100,
			HEIGHT = 22
		},
		PADDING = {
			LABEL = 2,
			SIDE = 15
		},
		SECTION_SPACING = 20
	}
}
