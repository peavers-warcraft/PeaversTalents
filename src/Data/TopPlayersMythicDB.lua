local addonName, addonTable = ...
addonTable.TopPlayersMythicDB = addonTable.TopPlayersMythicDB or {}

local talentData = {
	updated = "2025-02-12 12:42:10",

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
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFzMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
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
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wYYZYGYmFzMzgZGGz4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFzMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
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
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGMMMDWMmZ2ghZwDwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsMjF",
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
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
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
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTDGjZAmlBG2YGDDGjZAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglZwwGzMDDGDDAAAAAAwMDAYZbDwwAbwyiRjZAMbgZ2A",
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
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2aMDjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNgZAGMMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAMDAYGAAAAbzMDzMmZWMjZZmZsNgZbbm2iZMjZmhBmtMAgBAbAbMjZMAAAwMzy2SbzMsBAWYMmxMA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
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
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZwYG2aDAYgBwAbDAAAAYmZZbplZGLMYAYwMbYA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxwAAAMAAAAAAA0WmZWMMDGzY0GAwADAD2GAAAAwMzy2SLzMWYwAwMMDjB",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZGGzwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZGGzwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
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
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2SzsYYmx2MY2GGzyMLbjZwMMsswGAAAMz02sMbzAA2AGAwwwA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAittZmtltZGbmZ2WMbDAAAAAAzWTzsYYmx2MY2GGzyMLbjZwAsswGAGAgZm2mlZbGAwGwAAGGzA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzM2WMbDAAAAAAzWaGGmZsNDmthxsMzy2YGMALLsBgBAYmptZZ2mBAsBMAYmxMGA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzM2WMbDAAAAAAzWTzsYYmx2MY2GGzyMLbjZwghlF2AwAAMz02sMbzAA2AGAMGYA",
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
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMDDjxMzwYYmtZwG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMDDjhZGmlZYWmBb",
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
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzwwYYmhxwMLzgN",
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
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzwwYYmhxwMLzgN",
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
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzwwYYmhxwMLzgN",
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
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAottZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				},
			},
			[260] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0ixsNDAAAAAAz2yYGMzMzCsMbDAAAgZmBYgNYGjGzGgtBWMA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0ixsNDAAAAAAz2yYGMzMzCsMbDAAAgZmBYgNYGjGzGgtBWMA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
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
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw2yMzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw2yMzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
			},
			[261] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbLzMjZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMzy0YGzMmZGjZYmZMMmthZGbLzMjZmZMglZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMzYMDzMjhxsNMzMbLzMjZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
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
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMMGjhZhtZaMxyAmZAgAMbz2GYsZD",
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
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMMGjhZhtZaMxyAmZAgAMbz2GYsZD",
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
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAzysNeglZGwCjZYGjxCbmZmpmFAMzCWIMmlBYsALA",
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
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
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
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmNLDzmBgMGLA",
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
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMjlhxMTzwwMzMjBAAAAADzMzMDz2MzMGAAAzMzMzAAAAMW2GYALglhJwwCAzgN",
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
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMjlhxMTzwwMzMjBAAAAADzMzMDz2MzMGAAAzMzMzAAAAMW2GYALglhJwwCAzgN",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMjlhxMTzwwMzMjBAAAAADzMzMDz2MzMGAAAzMzMzAAAAMW2GYALglhJwwCAzgN",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				},
			},
			[251] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
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
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
			},
			[252] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMmZYGzMzMNMMzMzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMmZYGzMzMNMMzMzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
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
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMzMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
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
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwYaGw2CzMNMzMjZsMjZsYWGsMzYwYmZbMA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhZmGmZmxwyMmxiZZGWMjBjZmtxA",
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
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAzyiZMGjxMbmZZmZyCLDjZGAgZMA",
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
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWWGjxgxMbzYZmZaWYZGjZGAgZMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWYmZmhZMz2wyMz0sxywYmBAYGD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyMwCzMzgZMjhlZmpZhlZMmZAAmxA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWYmZmhZMz2wyMz0swywYmBAYGD",
				},
			},
			[264] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIjFmZaMzwwYZGzYxsMMLMAAGA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMbzMmJz2iZmpxMYYsYMjFjhZxMAAGA",
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
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIz2yYmpxMMDjFjZGGDzCDAgB",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZGZ2WYmpxMYYsYMjFjZMLMAAGA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZGZ2WMzMNMDDsMjZwsMMLMAAGA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMGZ2YmZaMzYGYxYGLmlxyswAAYA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZGZswMTjZGGYZGzYxsMMLMAAGA",
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
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMziBmZ0YMzYGzwwM4BmZmZmZmZmZGzMzYmZZmmZWmFAAAYBAAAAAAzGAAAAAAAAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGmZWgxMz0YMPwYmZGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAYWAAAAAAAAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMzCMmZ0YMPwsMjZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBz4BGzCMmZmGjxsMjZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
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
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMziHgxMz0YMGzYGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAY2AAAAAAAAA",
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
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMmZmNPAMzwYamxMDAAAAAgBAAAmZ2WWWmZiFAAAAAAWAYZGDzMzMjZwMzYMzMzMjhxA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmhZmNDMzMGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAA2AYZGDzMzMjZwMzYMzMzMjhxA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMzsAMzMGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAA2AYZGDzMzMjZwMzYMzMzMjhxA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmhZmFPAMzMGTzMmZAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFPAMzMGTzMmZAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFPAMzMGTzMmZAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
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
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbWwMMzsYgZmx0YmxMDAAAAAgZWmpZmlZBAAAsYmZwMmhZmZZGjxMPgNzsMjFzCDAAAAAAAA",
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
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsZgZmx0YMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsYWYAAAAAAAA",
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
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsYmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				},
			},
			[266] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
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
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
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
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAYDzMzMzMiZzwY2MzMMmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAMMmxMzMjY2MMmNzMDzysZMmxsY2YZxMDAAAAYmZmlZmZeALwAziRjZAMbYDDAAAAAAgZmZMAA",
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
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZmZY2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
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
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYsxgtZmZMzGzM2mlHYabZ2sNzMMLAAwGAAAwsNLNzMzCzgN",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYsBsNzMDz2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYsBsNzMDz2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZmZY2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYmNgtZmZY2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				},
			},
			[269] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbMzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZBjYmhxMMswM2mZmhZjZGmlZCAglxMMzMmlZAAsBAmlZpZmZWAA",
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
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFw2MzMMbjZGmlZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
			},
			[270] = {
				[0] = {
					label = "All Dungeons",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhx0MjBmhZAsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhx0MjBmhZAsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
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
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhx0MjBmhZAsNzMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
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
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhhmZmBmhZ2A2mZmhZjZGmlHYCAAAAwsNtNbzsMbAAAAAA",
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
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmxwwMDYmhZmBYzMLmlZWmZ2MzMzMzsYWGDD2ALMAjltZ2wY2GATAAAAWmZmZAA",
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
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmBYzMLmlZWmZ2MzMzMzsYWGDD2ALAYssNzGGz2AYCAAAwyMzYAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUwMzwwMDYmhZmBYzMLmlZWmZ2MzMzMzsYWGDD2ALMAjltZ2wY2GATAAAAWmZmZAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbGLmlZWmZ2MzMzMzsYWGDD2ALMAjltZ2wY2GATAAAAWmZmZAA",
				},
			},
			[103] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMmRzMmxMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
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
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMmRzMmxMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
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
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYMjBjZmRzMmhZmxyMsxAAAAAAAAAAAAQzsMLzMbDAYBGzAA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMjZmxyMsxAAAAAAAYAAAAAamlZZmZbAALwYAA",
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
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBwMGMzMT0MzMjZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYZAMGMzMT0MzMMzYWMsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZMzYWgtxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
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
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBwMmhZmZimZmhZGzCswAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
			},
			[105] = {
				[0] = {
					label = "All Dungeons",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGYkhZmxMMzMg2YAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[1] = {
					label = "Ara-Kara City of Echoes",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGYkhZmxMMzMg2YAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGYkhZmxMMzMg2YAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAw2ghZmBjmhhxMMzMWQbMAAAAAgBAwMAAAAAwsNzWzyMb2wMDMjB",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyAMzAjMMzMmhZmBm2YAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZmBjmhZMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GDAAAAAYAAMDAAAAAMbzs1sMzmNMzAzYA",
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
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjZmJmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
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
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjZmJmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
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
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMkZmBDzYbMmZsNDzMjZ8AGz2MzsYmZbmhZAAAAAWmFzYYWYagZmBbA",
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
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmFzMmZYGAAAAglZxMGmFmGYmZwG",
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
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGYYMmaYmZAAAAgZmZbMzsNmZMM2MGsALjhxyAYGEbYMA",
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
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGYYMmaYegZAAAAgZmZbMzsNmZMM2MGsALjhxyAYGEbYMD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAADAAMzgZYMegawMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
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
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMDGz0MmZysNz2MzMzYGzsMDwYsNmZMzMwAMYBWGjGLDgZAYDzA",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMDGmmxMTmtZ2mZmZGzYmlZAmZmtxMjxMwAjBLwyY0YZAMDAbYG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMPAGmmxMTmtZ2mZmZGzYmlZAzMzsNmZMzMwAjBLwyY0YZAMDAbYA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDmZww0MmZysNz2MzMzYGzsMDYmZsNmZWGzADwgFYZMasMAmBgNMA",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGz0wMTmtZ2mZmZGzYmlZAmZmtxMz2YGYgxgFYZMasMAmBgNMA",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmBDmZww0MmZysNz2MzMzYGzsMDYGzsNmZMzMwAjBLwyY0YZAMDAbYG",
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
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMZsMzYMmBAgxsZhFYgZYoBjFYA",
				},
				[2] = {
					label = "City of Threads",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
				[3] = {
					label = "Grim Batol",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjZMmZGBDAAAwMzoZsMzMjxAAgxsZhFYgZYoBjFYG",
				},
				[4] = {
					label = "Mists of Tirna Scithe",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAgZYMjxYGxYAAAAmZmpZsNzMjxMAAMmNLsADMDDNYsAzA",
				},
				[5] = {
					label = "Siege of Boralus",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjhxYGxMDAAAwMzMZsNzYMzMAAMmNLsADMDDNYsAD",
				},
				[6] = {
					label = "The Dawnbreaker",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
				[7] = {
					label = "The Necrotic Wake",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjhxYGxMDAAAwMzMZsNzYMzMAAMmNLsADMDDNYsAD",
				},
				[8] = {
					label = "The Stonevault",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
			},
		},
	},
}
addonTable.TopPlayersMythicDB = talentData