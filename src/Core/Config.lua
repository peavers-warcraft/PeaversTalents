local _, addon = ...

addon.Config = {
	DEBUG_ENABLED = false,
	MAINTENANCE_MODE = false,
	MAINTENANCE_MESSAGE = "Archon has not updated with new talent strings.\n\nThis will be back up and working with the start of the next Season in TWW.",

	DIALOG = {
		WIDTH = 600,
		HEIGHT = 255,
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
