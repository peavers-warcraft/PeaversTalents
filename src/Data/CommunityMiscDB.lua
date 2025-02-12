local addonName, addonTable = ...
addonTable.CommunityMiscDB = addonTable.CommunityMiscDB or {}

local talentData = {
	updated = "2025-02-12 12:42:10",

	[1] = {
		specs = {
			[71] = {
				[0] = {
					label = "Slayer Delve",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwG",
				},
			},
			[72] = {
				[0] = {
					label = "Slayer Delve",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGghZYMMzsBDzMjhZYmZbbmxMzsxMjZmhZYz2MMzYAAAgwM22GYBMgZYCM2wG",
				},
			},
			[73] = {
				[0] = {
					label = "Delves",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZWYGDTjBjZAsMwwGzMDDz8AjZAAAAAAAzMAALbbAGGYDWWMaMDgZDbMbA",
				},
				[1] = {
					label = "Mountain Thane",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZWYGDTjBjZAsMwwGzMDDz8AjZAAAAAAAzMAALbbAGGYDWWMaMDgZDbMbA",
				},
				[2] = {
					label = "Colossus",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZWYGDTjBjZAsMwwGzMDDz8AjZAAAAAAAzMAALbbAGGYDWWMaMDgZDbMbA",
				},
				[3] = {
					label = "Class",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZWYGDTjBjZAsMwwGzMDDz8AjZAAAAAAAzMAALbbAGGYDWWMaMDgZDbMbA",
				},
				[4] = {
					label = "Protection",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZWYGDTjBjZAsMwwGzMDDz8AjZAAAAAAAzMAALbbAGGYDWWMaMDgZDbMbA",
				},
			},
		},
	},
	[2] = {
		specs = {
			[65] = {
				[0] = {
					label = "Herald of the Sun Standard Melee",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZWMzMLzMsMDYbbm2CjZMzMMwslBAMgBbAbMzMmZWmtZmZpBAAAYBDgNGDjZG",
				},
				[1] = {
					label = "Lightsmith Avenging Crusader",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZWMjZZmZsNDMbbz0WYMjZmhBmtMAgBMYDYjZMzMAAAwMzy2SbzMsBMAGDjZA",
				},
				[2] = {
					label = "Herald of the Sun Casting",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZW2mxsMzwyMwstZaLMmxMzwAzWGAwAGsBsxMzYmZZ2mZmlGAAAgFMA2YMMmZA",
				},
				[3] = {
					label = "Delves",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMziZMLzMjlZAbbz0WjZYMzMMwslBAMAYDYjZmZmZWmtZmZpBAAAYBYgNAjZA",
				},
			},
			[66] = {
				[0] = {
					label = "Single-Target Templar",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNzMDz2YZMjZM2mZmZmxYYAAAGAAAAAAASmZWMMDGzY2aDAGDYAMYbAAAmZabWmtZAA2MwAwMDDjB",
				},
			},
			[70] = {
				[0] = {
					label = "Templar Single-Target",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[1] = {
					label = "Templar Cleave",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYMLzYbYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[2] = {
					label = "Herald of the Sun Single-Target",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAastNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAzysNzMbNAAAwCwAgxYGmB",
				},
				[3] = {
					label = "Herald of the Sun Cleave",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAastNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZsNMYGGWWYDAMLz2Mzs1AAAALADAGjZYG",
				},
				[4] = {
					label = "Herald of the Sun Divine Storm",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAiltZmNbzM2MmttZ2GAAAAAAGNNDDzM2mBz2wsMbzsshhxwwyGbDAMLz2Mzs1AAAALADAGjZYG",
				},
				[5] = {
					label = "Templar Open World/Delves",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRjltZmlltZGLmZWWYbAAAAAAY2aaGGMjtZMmthxsNzyGzwYYYZjtBAAAzMtNLz2MAgNgBAghZA",
				},
			},
		},
	},
	[3] = {
		specs = {
			[253] = {
				[0] = {
					label = "Single-Target Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				},
				[1] = {
					label = "Single-Target Dark Ranger",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswWgxCAAAAAAGAAAAAAAzYYWmZMMzYmZMDzyMjxMzMZGGzMzMzYmxMMGmZgBzyMDb",
				},
				[2] = {
					label = "Delves Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYmZbGjZmZwMjhZMzwMGzMzkZMjZMzMjZGGGDzMjxwMLzA",
				},
			},
			[254] = {
				[0] = {
					label = "Single-Target Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZwMzwMzMMzMjxMbzMeAAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				[1] = {
					label = "Single-Target Sentinel",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzG2AAAAAAAzYmZmhZmhZmZYmZGjZ2mZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				},
			},
			[255] = {
				[0] = {
					label = "Single-Target Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMWYgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				[1] = {
					label = "Single-Target Sentinel",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYgtxox2AY2AbzM2mxMzYMjxwMDzMzMzMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				[2] = {
					label = "Delves Sentinel",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZMjZmxYMGzMmBAAAAAAAAAAAAAANjZYmZmZMzwwYYmZwwMLzgF",
				},
			},
		},
	},
	[4] = {
		specs = {
			[259] = {
				[0] = {
					label = "TWW Delve",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAYMjZmxMMDAAAAAAz2glZAAAAAAottZmhHYmBzMzysNYMmZmZGzMzYbbZMDwmZZgBsAWGmADLA",
				},
			},
			[260] = {
				[0] = {
					label = "TWW Delve Build",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzYmhhZmZmZMzMtMjZZGAAAAAAstNzM8AzMswMLz2AAAAwMDwAbwMGNmNAbDsYG",
				},
			},
		},
	},
	[5] = {
		specs = {
			[258] = {
				[0] = {
					label = "wowcompare.io Voidweaver Single-Target",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				[1] = {
					label = "wowcompare.io Voidweaver Single-Target Shadow Crash",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				},
				[2] = {
					label = "wowcompare.io Voidweaver Delves",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYGDAAAAAAAAAAAAwwsMGzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				},
			},
		},
	},
	[6] = {
		specs = {
			[250] = {
				[0] = {
					label = "Single Target",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYGAAAAAmZmZmZmZmNzMjBAAAzMzMDAAAYstNwAWALDTghFAMYD",
				},
			},
			[251] = {
				[0] = {
					label = "Delves",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAwAYGzMjxYsMjZmZmZGzYmYMMYYmZMzwMzMzMzsMzAAAAAAAAAAAAMW2GYALglhJwYBzYGzAA",
				},
			},
			[252] = {
				[0] = {
					label = "Leveling Build",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMjZYYGmZmpZMjZGzYAAAAAAAAAMMzYGjZmZAAbgZxYmZmxMzA2MLGGYgZhhGLYAmBA",
				},
				[1] = {
					label = "Delves Build",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYGmZmpZMjZGzYAAAAAAAAAMMzYGjZmZAAbgZxYmZmxMzA2MLGGYgZjhGLYAmBA",
				},
			},
		},
	},
	[7] = {
		specs = {
			[262] = {
				[0] = {
					label = "Universal Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMzMzYWmlxAMzMDAAAAAAbmxwGsAzwQjNAwsNNDYDmphZmZMjlZMjFzywsMzYMzwMbMA",
				},
				[1] = {
					label = "Best single-target damage Farseer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmZAAAAAwiZ2gBMgZjJwsAAsNNzMMbwMNMmZ2GWmZmBjhZZmZGzMMzGDA",
				},
				[2] = {
					label = "Pure single-target Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjZGzysMGAzMDAAAAAAbmxwGsAzwQjNAgtpZmhZjxMNMmZ2GWmZmBjhZZMGzMzMzGDA",
				},
				[3] = {
					label = "Delve build",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMzMzYWmlxAMzMDAAAAAAbmxwGsAzwQjNAwsNNDYjxMNMzMjZsMjZsZMMLzMGzMMzGDA",
				},
			},
			[263] = {
				[0] = {
					label = "Stormbringer Totemic Delves Build",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNAWMjhNYBmhhGsAgZZyAWYMzMMzMzywyMzkFWGLjZGAgZMA",
				},
			},
			[264] = {
				[0] = {
					label = "Farseer Delve Soloing",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMjZmtZGGjZZsMzYzsZmFYADYWYCMWYmxmxsMzMkZjxMNmZGDsZMDbz2wsYGAADA",
				},
			},
		},
	},
	[8] = {
		specs = {
			[64] = {
				[0] = {
					label = "Spellslinger Single-Target",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzYGzmBmZ0YMzYGGmxMMzMzMzYmZmZGzMDzAAAAzMbLLLzMtBAAAAAgBAAAAAAAAA",
				},
				[1] = {
					label = "Frostfire Single-Target",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzYGzmBmZ0YMzYGMzYmhZmZmZGzMzMzYmZYmZZmmZWmFAAAYBAAAAAAAAAAAAAAA",
				},
				[2] = {
					label = "Spellslinger Boltslinger",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzYGzmBmZ0YMzYGGmZmZYMzMzYmZmZmZMYGAAAYmZbZZZmpNAAAAAAMAAAAAAAAA",
				},
				[3] = {
					label = "Frostfire Boltslinger",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzYGzmBmZ0YMzYGmZGzMDPwMzMDzMzMzMzMwMLz0Mz2sAAAALAAAAAAYAAAAAAAAA",
				},
				[4] = {
					label = "Spellslinger AoE/Dungeon/Delve",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMzmBGz0YMzYmZwwMMzMzMzMzDMzMzMzMzYGAAAYmZbZZZmpNAAAAAAYBAAAAAAAA",
				},
				[5] = {
					label = "Frostfire AoE/Dungeon/Delve",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMzmBGz0YMzYmZGGmBPwMzMzMzMzMzYmZGzMLz0MzysAAAALAAAAAAYWAAAAAAAAA",
				},
			},
			[62] = {
				[0] = {
					label = "Delve",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwMziBmZYMNzYGAAAAAAGAwMz0ystNDAgNAAAAAA2AYZGDzMzMjZYmZGjZMzMjhxA",
				},
				[1] = {
					label = "Spellslinger Single Target",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				[2] = {
					label = "Sunfury Single Target",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAMzMtMbLzAAYDAAAAAAAsMjBzMzMmhZGjZmxMzMGzYA",
				},
			},
			[63] = {
				[0] = {
					label = "Delve",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMziBmZYaMzYGAAAAAAGAwMz0yssMDAwmxMYMzYmhFzyYGzMMz2MWmZZYAAAAAAAA",
				},
				[1] = {
					label = "Single-Target Cleave",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMmxs4BYMzw0YmxMDAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
			},
		},
	},
	[9] = {
		specs = {
			[265] = {
				[0] = {
					label = "Single-Target",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWGAAAwMjZWmZM2MzMLMzMDAYmxy2ADYAzwSghtZAAAAAAAAgZmZzA",
				},
				[1] = {
					label = "Delves",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWGAAAwMjZWmZmx2MzMLMmZAAzMWWGYADYG2CMsNDAAAAAAAAMDLA",
				},
			},
			[266] = {
				[0] = {
					label = "Single-Target",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAMzMzMjYWMMmtZmZYWGAAAAAAAAAAzAGzYYBGYbYhGWYmZGz2YmFzMzMjxMGMzMzAzMAAA",
				},
				[1] = {
					label = "Delves",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsNzMDz2AAAAAAAAAAYeAwYGDLwAbDL0wCzMmZ2GzsZmZmZMMGmZGzYYmBAAA",
				},
			},
			[267] = {
				[0] = {
					label = "Single-Target",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZY2mFzwMzsY2MWMzAAAAAjZmZZmZmBMmxwCMw2wGNWwAAAAAAAYGjZAA",
				},
				[1] = {
					label = "Delves",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWmFjxMzsYWmZZZmZAAAAgxMsMzMzAGzYYBGYbYhGLYAAAAAAAMMmBAA",
				},
			},
		},
	},
	[10] = {
		specs = {
			[268] = {
				[0] = {
					label = "Delves/Open-WorldTalents",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAmZMmBjlZmtZmZGAAAAAAAWWAxMDMDDmBLzMzYmlhZsMLz0ymFbjZY2AAgNAAAgZbWamZmFmBb",
				},
				[1] = {
					label = "Legacy Content/SpeedTalents",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAmZMmhZsMjtZMzYAAAAAAA2WAxMDmBjFzglZmZMjhZmlZx0ymNbzMjZ2AAgNAAAgZb2amZmFmBb",
				},
			},
			[269] = {
				[0] = {
					label = "Single-Target",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[1] = {
					label = "",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
			},
			[270] = {
				[0] = {
					label = "Delve Soloing",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzMzYDbzysNeAMbWmZWWMDNzMjFmhZWA2mZmhZjZGsYCAAAAAAYxyssNLzMTAAAA",
				},
			},
		},
	},
	[11] = {
		specs = {
			[102] = {
				[0] = {
					label = "Single-Target",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMLsMz2MWwMzMzsY2mZMzM2AbMADw22YBTzMLDAAAA2MzYAA",
				},
			},
			[103] = {
				[0] = {
					label = "Wildstalker Druid of the Claw Delves Build",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYLgZMgZGamxMMzMWmxsZGAAAAAAAAAAAAAAz2MbNbzsshZmBA",
				},
			},
			[104] = {
				[0] = {
					label = "TWW Delve",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMWmxyMjxYswwMzilBwYwMjJamxMzMjZxwyMAAAAAAAGjZgltZ2wY2GATAAAAbYmBA",
				},
				[1] = {
					label = "",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMWmhZmZMGLMMzsYZAMGMzYimZMzMzYWMswAAAAAAAGGzALbzshxsNAmAAAA2YmZAA",
				},
			},
			[105] = {
				[0] = {
					label = "Keeper of the Grove Dungeon Healing",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYzMzMzsY2GeAGLbjtNbzAAAAAAAAAAAAYxwgZMmRmBzMjZmZATbGAAAAAgBAgBYbbsgpZmlBAAAwCjhhZM",
				},
				[1] = {
					label = "Wildstalker Dungeon Healing",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYzMzMzsY2GeAGLLjtNbzAAAAAAAAAAAAYZwgZwMywMzYMzMzYhpNAAAAAAGAAGAAAAAY2mZrZZmFbwMwMG",
				},
				[2] = {
					label = "Delves",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmNz2MjBLLjtFbzAAAAAAAAAAAAYZwgZwMCGzYMzMjZbmpNAAAAAAGAAGAAAAAY2mZrZbmFbwMgZG",
				},
			},
		},
	},
	[12] = {
		specs = {
			[577] = {
				[0] = {
					label = "Aldrachi Reaver Fel-Scarred Delves Build",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMhZGAAAAAAwsNMmZMzgZmtZbWGzgZglNYZWMjhZhpxYmZMYD",
				},
			},
			[581] = {
				[0] = {
					label = "Fel-Scarred Delve Build",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjhZmMzMGDzMbjBjtZYmZMDzY2mZmtZmhZwAAAAAsMLmxwsx0AzMG2A",
				},
				[1] = {
					label = "Aldrachi Reaver General Build",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjhZmMzMYYmZbMGjtZYmZMzwY2mZmNzMmZwAAAAwsNDGGLbMhBzMwC",
				},
			},
		},
	},
	[13] = {
		specs = {
			[1473] = {
				[0] = {
					label = "Scalecommander Universal Build",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzYZgZWmxYYmNAAAAAAAAMzADMmaMzMDAAAAmxMbjZmtxMDM2mxgFYZMM2GAzgYDzMA",
				},
				[1] = {
					label = "Scalecommander Single-Target Build",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsMzMzwgZGzMjhZ2AAAAAAAAwMDMwYqxMzMAAAAYGzsNmZ2GzMwYbGDWglxwYbAMDiNMzA",
				},
				[2] = {
					label = "Chronowarden Universal Build",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjtZmZGLDmZWmBzYmNAAAAAAAAMzADMmaMzMDAAAAmxMbjZmtxMDM2mBGzmFWgBmhhGYBzMA",
				},
				[3] = {
					label = "Chronowarden Single-Target Build",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjtZmZGGMzsMzwMmZDAAAAAAAAzMwAjpGzMzAAAAgZMz2YmZbMzAjtZgxsZhFYgZYoBWwMD",
				},
			},
			[1467] = {
				[0] = {
					label = "Single-Target",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmBzsZGzMgBjHYaGzMZ2GbjZmZMjZ2mBMjZ2YmZZmZgBGDWglxox2AYGA2wA",
				},
				[1] = {
					label = "Delve",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMjxw0MmZysNz2MzMzYGzsMDYmZsxMzyMzADwgFYZMasNAmBgNMA",
				},
			},
			[1468] = {
				[0] = {
					label = "Chronowarden Flameshaper Delves",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
			},
		},
	},
}
addonTable.CommunityMiscDB = talentData