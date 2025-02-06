local _, addon = ...

addon.Config = {
	DEBUG_ENABLED = true,

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
