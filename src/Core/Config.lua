local _, addon = ...

addon.Config = {
	DEBUG_ENABLED = false,
	MAINTENANCE_MODE = false,
	MAINTENANCE_MESSAGE = "wowcompare.io has not updated with new talent strings.\n\nThis will be back up and working shortly.",

	DIALOG = {
		WIDTH = 600,
		-- Sized to fit the wowcompare.io tab's sections (M+, 3 raid difficulties, and the
		-- single Sporefall row) plus its divider gap and the footer instructions.
		HEIGHT = 410,
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
