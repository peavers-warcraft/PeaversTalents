local addonName, addonTable = ...
addonTable.dungeonTalents = addonTable.dungeonTalents or {}

local talentData = {
	[1] = {  -- Warrior
		specs = {
			[71] = {
			},
			[72] = {
			},
			[73] = {
				["all-dungeons"] = {
					label = "All Dungeons",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				["ara-kara-city-of-echoes"] = {
					label = "Ara-Kara, City of Echoes",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				["city-of-threads"] = {
					label = "City of Threads",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				["grim-batol"] = {
					label = "Grim Batol",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				["mists-of-tirna-scithe"] = {
					label = "Mists of Tirna Scithe",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				["siege-of-boralus"] = {
					label = "Siege of Boralus",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				["the-dawnbreaker"] = {
					label = "The Dawnbreaker",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYMDAAAAAAwMDAYZbDwwAbwyiRjZAMbgZ2A",
				},
				["the-necrotic-wake"] = {
					label = "The Necrotic Wake",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
				["the-stonevault"] = {
					label = "The Stonevault",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				},
			},
		},
	},
	[2] = {  -- Paladin
		specs = {
			[65] = {
			},
			[66] = {
			},
			[70] = {
			},
		},
	},
	[3] = {  -- Hunter
		specs = {
			[253] = {
			},
			[254] = {
			},
			[255] = {
			},
		},
	},
	[4] = {  -- Rogue
		specs = {
			[259] = {
			},
			[260] = {
			},
			[261] = {
			},
		},
	},
	[5] = {  -- Priest
		specs = {
			[256] = {
			},
			[257] = {
			},
			[258] = {
			},
		},
	},
	[6] = {  -- Death Knight
		specs = {
			[250] = {
			},
			[251] = {
			},
			[252] = {
			},
		},
	},
	[7] = {  -- Shaman
		specs = {
			[262] = {
			},
			[263] = {
			},
			[264] = {
			},
		},
	},
	[8] = {  -- Mage
		specs = {
			[62] = {
			},
			[63] = {
			},
			[64] = {
			},
		},
	},
	[9] = {  -- Warlock
		specs = {
			[265] = {
			},
			[266] = {
			},
			[267] = {
			},
		},
	},
	[10] = {  -- Monk
		specs = {
			[268] = {
			},
			[269] = {
			},
			[270] = {
			},
		},
	},
	[11] = {  -- Druid
		specs = {
			[102] = {
			},
			[103] = {
			},
			[104] = {
			},
			[105] = {
			},
		},
	},
	[12] = {  -- Demon Hunter
		specs = {
			[577] = {
			},
			[581] = {
			},
		},
	},
	[13] = {  -- Evoker
		specs = {
			[1467] = {
			},
			[1468] = {
			},
			[1473] = {
			},
		},
	},
}
addonTable.dungeonTalents = talentData