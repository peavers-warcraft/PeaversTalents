local addonName, addonTable = ...
addonTable.TopPlayersMythicDB = addonTable.TopPlayersMythicDB or {}

local talentData = {
	updated = "2025-02-07 17:28:18",

	[1] = { 
		specs = {
			[71] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFzMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFzMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmlxMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLDzAzsYmZGMzwwAzwAAAAAAAgZMbDGgtYAsZGDLwAzwGNYwC",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wYYZYmFMWmZmZwMDDjHgZYAAAAAAAwMmtBDwWMA2MjhFYgZYjGAL",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wYYZGzAjlZmZGMzww4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wYYZGzAjlZmZGMzww4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wYYZYGYmFzMzgZGGz4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wYYZYGYmFzMzgZGGz4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
			},
			[72] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwyMmZ2ghZMGmhZmltZGzMzGzMmZGmhNbzwMjBAAACjB2glFjGzAYWgFsA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
			},
			[73] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxDYMDglBG2YmZYYGjZAAAAAAAmZAALbbAGGYDWWMaMDgZDMzG",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxDYMDglBG2YmZYYGjZAAAAAAAmZAALbbAGGYDWWMaMDgZDMzG",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglZGzwGzMDDMDDAAAAAAwMDAYZbDwwAbwyiRjZAMbgZ2A",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTDGjZAmlBG2YGDDGjZAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZMjHwYYAAAAAAAmZAALbbAGGYDWWMaMDgZDY2A",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxDYmZAsAG2YmZYYGDDAAAAAAwMDAYZbDwwAbwyiRjZAMbYzMbA",
				},
			},
		},
	},
	[2] = { 
		specs = {
			[65] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAMDAYGAAAAbzMDzMmZWMjZZmZsNgZbbm2iZMjZmhBmtMAgBAbAbMjZMAAAwMzy2SbzMsBAWYMmxMA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwAjZA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZYmxMziZMLzMjtBMbbz0WMzixMzwAzWGAwAgNgNmxMzAAAAzMLbLtNzwGwAYwYbGA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				},
			},
			[66] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZGGzwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZGGzwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZwYY2aDAYgBwAbDAAAAYmZZbplZGLMYAYwMbYA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxwAAAMAAAAAAA0WzMzihZmxYg2AAGYAA2GAAAAwMzy2SLzMWYwgBGMDjB",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2amZWMMzwYG0GAwADAw2AAAAAmZW2WaZmxCDGAGMzGG",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAAAAAAAAA0WzMzihZmxYG0GAwADAw2AAAAAmZW2WaZmxCDGAGMDjB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxwAAAMAAAAAAA0WmZWMMDGzY0GAwADAD2GAAAAwMzy2SLzMWYwAwMMDjB",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxwAAAMAAAAAAA0WzMzihZGGD2aDAYGMAAbDAAAAYmZZbplZGLMYgFAzshB",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxwAAAMAAAAAAA0WzMzihZmxYwWbAADMAAbDAAAAYmZZbplZGLMYAYwMMG",
				},
			},
			[70] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aamFDzM2mBz2wYWmZZbMDGglF2AAAgZm2mlZbGAwGwAAGzsB",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aamFDzM2mBz2wYWmZZbMDGglF2AAAgZm2mlZbGAwGwAAGzsB",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2SzsYYmx2MY2GGzyMLbjZwMMsswGAAAMz02sMbzAA2AGAwwwA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzM2WMbDAAAAAAzWamFDzM2mBz2wYWmZZbMDGMsswGAGAgZm2mlZbGAwGwAAGGzA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2SzsYYmx2MY2GGzyMLbjZwMMsswGAAAMz02sMbzAA2AGAwwwA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzM2WMbDAAAAAAzWTzsYYmx2MY2GGzyMLbjZwMMsswGAAAMz02sMbzAA2AGAwwsB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAittZmtltZGbmZ2WMbDAAAAAAzWTzsYYmx2MY2GGzyMLbjZwghlF2AwAAMz02sMbzAA2AGAwwYA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aamFDzM2mBz2wYWmZZbMDGMsswGAAAMz02sMbzAA2AGAwwsB",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2SzsYYmx2MY2GGzyMLbjZwghlF2AAAgZm2mlZbGAwGwAAGzsB",
				},
			},
		},
	},
	[3] = { 
		specs = {
			[253] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMMzwsMMjZwG",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMMzwsMMjZwG",
				},
				[2] = {
					label = "City of Threads",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMmZGmlBjZwG",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMmZGmlBjZwG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMmZGmlBjZwG",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMmZGmlBjZwG",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMmZGmlBjZwG",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMzMzMmZYYMMzwYYmlZwG",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMmZGmlBjZwG",
				},
			},
			[254] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZamxYYmhxwMLzA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				},
				[2] = {
					label = "City of Threads",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZamxYYmhxwMLzA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZamxYYmhxwMLzA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGjZmhxwMmBb",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZamxYYmhxwMLzA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZamxYYmhxwMLzA",
				},
			},
			[255] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzwwYYmhxwMLzgN",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				},
				[2] = {
					label = "City of Threads",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzYGGDzMMGmxMYD",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMDzwYYmBLzwYmhN",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzwwYYmhxwMLzgN",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzYGGDzMMGmZZGA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzYGGDzMMGmxMYD",
				},
			},
		},
	},
	[4] = { 
		specs = {
			[259] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAottZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				},
			},
			[260] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw2yMzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
			},
			[261] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbLzMjZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMzy0YGzMmxYMDzMzMMmthZmZbbmZMzMDglZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzYbZmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
			},
		},
	},
	[5] = { 
		specs = {
			[256] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGjZhhBjhZhtZaMxyAmZAgAMbz2GYsZD",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGjZhhBjhZhtZaMxyAmZAgAMbz2GYsZD",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzYMLMmxYMYhtZaMxyAmZAgAMbz2GYsZD",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMMGjhZhtZaMxyAmZAgAMbz2GYsZD",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzgZhxMGjBLb2mpxELDYmBACwsNbbgxmN",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMMGjhZhtZaMxyAmZAgAMbz2GYsZD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMMGjhZhtZaMxyAmZAgAMbz2GYsZD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzgZxMmBjBLb2mpZELDYmBACwsNbbgxmN",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGjZhhBjhZhtZaMxyAmZAgAMbz2GYsZD",
				},
			},
			[257] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDzY5BGMzMjBmxMMWmZmlBAAAAYWmthlZmHAzCzyMmZMYZBmZmaWAwMLYhwYWGgxCsA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDzY5BGMzMjBmxMMWmZmlBAAAAY2mthlZmHAzCzyMmZMYZBmZmaWAwMLYhwYWGgxCsA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDzY5BGMzMjBmxMMWmZmlBAAAAYWmNmlZmHAWYMjxYMWWYmZmpmFAMzCWIMmlBYsALA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				},
			},
			[258] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YGDmNmZmZMbjBGjhZxsN1YGWwMAmZxywsZAIjxCA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmllxUzMYBzAYmFLDzmBgMGLA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YGDmtxMjZMbMwYMjZxsN1MDWwMAmZxywsZAIjxCA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDAAAAAAAAAAAAAGPwsYGzMz2sNmZmZ2GzsAzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YGDmNmZmZMbjBGjhZxsN1YGWwMAmZxywsZAIjxCA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBz2YmxMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				},
			},
		},
	},
	[6] = { 
		specs = {
			[250] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMDjZMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMjlhxMTzwwMzMjBAAAAADzMzMDz2MzMGAAAzMzMzAAAAMW2GYALglhJwwCAzgN",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMDjZMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMMzMDjZMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
			},
			[251] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMjxMDzYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZmxwMZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMGDDzMzMzwMmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMGDDzMzMzwMmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMjxMzYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
			},
			[252] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYGzMzMNjhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGzsMjZmZmGGmZMjBAAAAAAAAAmZMmxMzMAwsZGmFMzMzDMzMDYxsYYgBmNGasAAzAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMmZYGzMzMNMMzMzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
			},
		},
	},
	[7] = { 
		specs = {
			[262] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhZmGmZmxMWmxMYWGsMzYwYmZbMA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhZmGmZmxMWmxMYWGsMzYwYmZbMA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwYaGY2WYmpxMzMDsMjZGmlBLzMGMmZ2GDA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhZmGmZmxwyMmxmZZwyMjBjZmtxA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwYaGw2yYmphZmZYsMjZGmlhZxMGMmZ2GDA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwYaGw2CzMNMzMjhlZMDmlZWsMzYwYmZbMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhZmGmZmxwyMmxiZZwyMjBjZmtxA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhx0gZmxMWmZmBzyYxyMjBjZmtxA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwYaGw2CzMNMzMjZsMjZsYWGsMzYwYmZbMA",
				},
			},
			[263] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWMmZmhZMzmxyMzkNWmxYmBAYGD",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyMwyCzMDmxMbzYZGTzCLDjZGAgZMA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyMMWMzMzgZMDjlZmpBLDjZGAgZMA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZbyA2WYmZGmZmxMWmZmswyMYmBAYGD",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWMmZmhZMzmxyMzkNWmxYmBAYGD",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyMwyyMzMDmxMbDLzYyCLzgZGAgZMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAzCzMzMmZMjhlZmJLsMMmZAAmxA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAW2mZmZGmxMwyMz0swyMYmBAYGD",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAzyiZMGjxMbDLzMTzCLDjZGAgZMA",
				},
			},
			[264] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIz2CzMNmZYYsYMDmlhZZMAAGA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIz2CzMNmZYYsYMDmlhZZMAAGA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIjFmZaMzwwYZGzYxsMMLMAAGA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZIzmZMTjZGGYxYGbmlxyswAAYA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIzmxMTjZGGGLGzMMLDzCDAgB",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZGZ2YmZaMzwwYxYGMLDzCDAgB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZGZ2YmZaMzwALzYGMLDzCDAgB",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMGZ2YmZaMzYGYxYGLmlxyswAAYA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZbmxIz2iZmpxMDDsYMjFzywswAAYA",
				},
			},
		},
	},
	[8] = { 
		specs = {
			[64] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGmZWgxMjGj5BmlZmZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGmZWgxMjGj5BmlZmZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMzCMmZ0YMPwsMjZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGmZWgxMz0YMmlZmZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMzCMmZ0YMPwsMjZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMzCMmZmGj5BGzYGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAYWAAAAAAAAA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMzCMmZ0YMPwsMjZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbzsZBzwMzCMmZ0YMPwYmZGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAY2AAAAAAAAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMzCMmZmGjxsMjZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
			},
			[62] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFPAMzMGTzMmZAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFgZmxYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
				[2] = {
					label = "City of Threads",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMYbWwMegZmNPAMzMGTzMLzAAAAAAwAAAAzMbLLLzMxCAAAAAAbAsMjhZmZmxMYmZMmZmZmxwYA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxDMmFPAPgZmxYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMzsAMzMGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAA2AYZGDzMzMjZwMzYMzMzMjhxA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFgZmxYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFPAMzMGTzMmZAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwMbzCmhZmNPAMzwYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwCALzYYmZmZMDmZGjZmZmZMMG",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMegZmFgZmxYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
			},
			[63] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMzs5BgZGmGzMmBAAAAAgZWmpZmlZBAAAsYmZwMmhZmZZGjxMPgNzsMjFzCDAAAAAAAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMzs5BgZGmGzMmBAAAAAgZWmpZmlZBAAAsYmZwMmhZmZZGjxMPgNzsMjFzCDAAAAAAAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFDMzMmGzDMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsYWYAAAAAAAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzAbWwMjZmFPAMzMmGzMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsZWYAAAAAAAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsZgZmx0YMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsYWYAAAAAAAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsYgZmx0YMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsYWYAAAAAAAA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMgZbWwMzMzsBjZmx0YmxAAAAAAgZWmpZmlZBAAAsYmZwMmhZmZZGjxMPgNzsMjFzCDAAAAAAAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsYgZmx0YMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsYWYAAAAAAAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsYgZmx0YMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsYWYAAAAAAAA",
				},
			},
		},
	},
	[9] = { 
		specs = {
			[265] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsYmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
			},
			[266] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
			},
			[267] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMjY2MMmNzMDzysZMmxsY2YZxMDAAAAYmZmlZmZeALwAziRjZAMbYDDAAAAAAgZmZMAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2mNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMjY2MMmNzMDzysZMmxsY2YZxMDAAAAYmZmlZmZeALwAziRjZAMbYDDAAAAAAgZmZMAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMjY2MMmNzMDzysZMmxsY2YZxMDAAAAYmZmlZmZeALwAziRjZAMbYDDAAAAAAgZmZMAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				},
			},
		},
	},
	[10] = { 
		specs = {
			[268] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZmZY2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYsBsNzMDz2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZMjZ2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZmZY2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZmZY2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGAAAAAAAWWgJmZgZYsBsNzMDz2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZmZYWYmx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
			},
			[269] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMMswM2mxMMbMzws8ATAAsMmhZmxsMDAgNAwsMLNzMzCA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFG2mZmhZbYGmlZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbMzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MmhZbYGmlZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFG2mZmhZbYGmlZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MmhZbMzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
			},
			[270] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhhmZmBmhZAsNjZY2GzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhhmZmBmhZAsNjZY2GzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhZ0MzMwMMDgtZMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhZ0MzMwMMDgtZMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhhmZMwMMDgtZmZY2YmhZZmAAAAAMbTbz2MLzGAAAAYD",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhhmZMwMMzGw2MzMMbMzws8ATAAAAAmtptZbmlZDAAAAsB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwilZWGziZbGzYDbzysNeAMbLLzMLLM0MzMwMMDgtZmZY2YmhZZmAAAAAMbTbz2MLzGAAAAYD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhx0MjBmhZAsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhZmmZmBmhZAsNjZY2YmBLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
			},
		},
	},
	[11] = { 
		specs = {
			[102] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGDDYmhZmBYzMLmlZWmZ2MzMzMzsYWGDD2ALMAjltZ2wY2GATAAAAWmZmZAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUwMzwwMDYmhZmBYzMLmlZWmZ2MzMzMzsYWGDD2ALMAjltZ2wY2GATAAAAWmZmZAA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUwMzwwMDYmhZmBYzMLmlZWmZ2MzMzMzsYWGDD2ALMAjltZ2wY2GATAAAAWmZmZAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUwMzwwMDYmhZmBYzMLmlZWmZ2MzMzMzsYWGDD2ALMAjltZ2wY2GATAAAAWmZmZAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmBYzYxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				},
			},
			[103] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYMjBjhRzMmhZmxygNzAAAAAAAAAAAAQzsMLzMbDAYBzMDA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMmRzMmxMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYMjBMzMamxMMzMzyMmNGAAAAAAAAAAAAamlZZmZbAALwYGA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYMjBjhRzMmhZmxygNzAAAAAAAAAAAAQzsMLzMbDAYBzMDA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYMjBjhRzMmhZmxygNzAAAAAAAAAAAAQzsMLzMbDAYBzMDA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				},
			},
			[104] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYZAMGMzMT0MzMMzYWMsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYZAMGMzMT0MzMMzYWMsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYZAMGMzMT0MzMMzYWMsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZMzYWglxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBwMGMzMT0MzMjZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
			},
			[105] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAw2ghZGYkhZmxMMzMg2YAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZmBjmhZmxMMzMg2AAAAAAYAAMDAAAAAMbzs1sMzmNMzAzYA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAw2ghZmBjmhhxMMzMWQbMAAAAAgBAwMAAAAAwsNzWzyMb2wMDMjB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZmBjmhZmxMMzMg2AAAAAAYAAMDAAAAAMbzs1sMzmNMzAzYA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZmBjmhZmxMMzMg2AAAAAAYAAMDAAAAAMbzs1sMzmNMzAzYA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
			},
		},
	},
	[12] = { 
		specs = {
			[577] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZm5BGAAAAAAwsMMbzwMDMz2sNLzMDmBW2glZxMGmNmGjZmxgN",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				},
			},
			[581] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				},
			},
		},
	},
	[13] = { 
		specs = {
			[1473] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGYYMmaYmZAAAAgZmZbMzsNmZMM2MGsALjhxyAYGEbYMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGYYMmaYmZAAAAgZmZbMzsNmZMM2MGsALjhxyAYGEbYMA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGYYMmaYmZAAAAgZmZbMzsNmZMM2MGsALjhxyAYGEbYMA",
				},
			},
			[1467] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGz0wMTmtZ2mZmZGzYmlZAmZmtxMz2YGYgxgFYZMasMAmBgNMA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMDGmmxMTmtZ2mZmZGzYmlZAzMjtxMzyMzADwgFYZMasMAmBgNMA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDmZMGmGmZysNz2MzMzYGzsMDYmZsNmZMmBGgBLwyY0YZAMDAbYG",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMmZgZMGmGmZysNz2MzMzYGzsMDYmZsNmZMmBGgBLwyY0YZAMDAbYG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMDGmmxMTmtZ2mZmZGzYmlZAzYmtxMjxMwAjBLwyY0YZAMDAbYG",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMwYmmxMTmtZ2mZmZGzYmlZAmZmtxMzyYGYgxgFYZMasMAmBgNMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGz0wMTmtZ2mZmZGzYmlZAmZmtxMz2YGYgxgFYZMasMAmBgNMA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDPwMjxw0wMTmtZ2mZmZGzYmlZAmZsNMjZmBGgBLwyY0YZAMDAbYG",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMwYmGzMTmtZ2mZmZGzYmlZAzMjthZ2mZGYAGsALjRjlBwMAshZA",
				},
			},
			[1468] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAYMjhxYGxMDAAAwMzMNjtZGjZmBAgxsZhFYgZYoBjFYG",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMzMMGzIGDAAAwMzMZsNzYWGzAAwY2swCMwMM0gxCMD",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMzMjxwMx8AzAAAAmZmJDzMGjZAAYMbWYBGYGGawYBG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZm5BMGzImZAAAAmZmpZsNzYMzAAgxsZhFYgZYoBjFYA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAgZYMzMGzImHYAAAAmZmpZYmZGjZAAYMbWYBGYGGawYBG",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMPgxYGxMDAAAwMzMZsMzYMzMAAMmNLsADMDDNYsAD",
				},
			},
		},
	},
}
addonTable.TopPlayersMythicDB = talentData