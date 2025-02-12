local addonName, addonTable = ...
addonTable.MostPopularMiscDB = addonTable.MostPopularMiscDB or {}

local talentData = {
	updated = "2025-02-12 12:42:10",

	[1] = {
		specs = {
			[71] = {
				[0] = {
					label = "Delves/Leveling/Open World | Colossus",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAwYmZMjZMzsNbLLjZAAAAYw0ADLzYGYsMmZGMzwwYYGGAAAAAAAMjZbwAsFDgNzYYBGYGtRDMsA",
				},
			},
			[72] = {
				[0] = {
					label = "Delves/Open World | Mountain Thane",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAaAzghhZwywMzGMMjxwMMzstNzYmx2YmxYGmhNbzwMzMAAAQYMwGssY0YGQmFYxYB",
				},
				[1] = {
					label = "Leveling/Open World | Mountain Thane",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAaAGMjhZwyYmZ2ghZMGmhZmttZGzM2GzMGzwMsZbGmZmBAAACjB2glFjGzAysALGLA",
				},
			},
		},
	},
	[2] = {
		specs = {
			[65] = {
				[0] = {
					label = "Lightsmith | Lightsmith Build",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMbzMLmxsMzwyMwstNTbxMmxMzwAzWGAwAGsBsxMzYGAEAwMzy2SLzMsBA2YMMmB",
				},
				[1] = {
					label = "Lightsmith | Lightsmith Build",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZW2mxsMzwyMwstZaLmxMmZGGY2yAAGwgNgNmZGzAgAAmZW2WaZmhNMA2YMMmB",
				},
				[2] = {
					label = "Lightsmith | Lightsmith Build",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMziZMLzMsMDMbbz0WjZYMzMMwslBAMAMbAbMzMzMAIAgZmltlWmZYDYmBAGzA",
				},
				[3] = {
					label = "Delves | Lightsmith",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAMDAYGAAgBYZMDzMmZWWMmlZmx2MgttZarxMMGzwAzWGAwAwsBsxMzMzAgAAmZW2WabmhNgBwAjZA",
				},
			},
			[66] = {
				[0] = {
					label = "Delves Open World | Templar",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNmZYWGLMzMzMLbzMzYGMjBAAYAAAAAAAotmZGGMDjZmZrNAYMwAYgtBAAYmptZZ2mBIwmZAMADDjB",
				},
			},
			[70] = {
				[0] = {
					label = "Delves/Open World | Templar",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRjltZmlltZGLmZWWYbAAAAAAY2aaGGMjtZMmthxsNzyGzwYYYZjtBAAQmZabWmtZAAbADAADzA",
				},
			},
		},
	},
	[3] = {
		specs = {
			[253] = {
				[0] = {
					label = "Open World / Delve Build | Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALjGaYDAAAAAADAAAAAAwM2mxYmxMMzYGzYmhZMmZmJzYGzMzMGzMmhxwMzYWGGmBA",
				},
			},
			[254] = {
				[0] = {
					label = "Delves Build | Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYssNwAmgZhtAzCAAAAAAYmZmZgxYMmZmZmZYmZ2YMLAAAAAAAYGzwYmZMzMzMjBmZGjhZWmBA",
				},
				[1] = {
					label = "Delves Build | Sentinel",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGQmNsBAAAAAAmZmZYYYmZmZmZmZGmZsxYWAAAAAAAwMmhxMzYmZmZGDMzMGDzsMDA",
				},
			},
			[255] = {
				[0] = {
					label = "Sentinel Single Target | Sentinel",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYgtxoxyAY2C2mZsNjZmZGzYgZGmZmZmZGAAAAAAAAAAAAAAaGGzwMzYmxMMGmZYMjZWmBL",
				},
				[1] = {
					label = "Pack Leader Single Target | Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YILw2wQDWmZsNjZmZGzYMYmxMzMjZGAAAAAAAAAAAAAAaGGzwMzYmhhZGmZYMjZWmBL",
				},
				[2] = {
					label = "Delves | Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMWYILw2wQDWmZsNmZmxYmZmZYmZMmZMDAAAAAAAAAAAAAAyYGGzMzYmxMMmxMzYMMzyMA",
				},
				[3] = {
					label = "Open-World | Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMWYILw2wQDWmZsNmZmxYmZmZYmZMmZMDAAAAAAAAAAAAAAyYGGzMzYmxMMmxMzYMMzyMA",
				},
			},
		},
	},
	[4] = {
		specs = {
			[259] = {
				[0] = {
					label = "Delves/Open World | Deathstalker",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzixsNDAAAAAAttNzMYmxYmZWmlxYwMzYGMzMbbLjZA2MLDMglglhJwwyA",
				},
			},
			[260] = {
				[0] = {
					label = "Keep It Rolling Single Target | Fatebound",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNhFzA",
				},
				[1] = {
					label = "Keep It Rolling Cleave | Fatebound",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mhZMjxMzMDzwwMzMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNhFzA",
				},
			},
			[261] = {
				[0] = {
					label = "Delves Build | Trickster",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmMsMGzMjxMMzMmZGz2YMjltZmxMzMGMWmlBAAAgZwAYMbGGYgZTL0iNYA",
				},
			},
		},
	},
	[5] = {
		specs = {
			[256] = {
				[0] = {
					label = "Delves/Questing | Voidweaver",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGMz2YMzMmZzsNzMzMMAAAAAAAAAAAALz2wyMDMLMbzYmxYssZbmmZiFgZGAUAmlZZDM2sB",
				},
			},
			[257] = {
				[0] = {
					label = "Delves/Questing | Oracle",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYYZGMjZMwMPwMMzyMzsMAAAAAzysNsMz8AAmlZMzYMW2sxMzUWAwMLYhwY2GQjFYB",
				},
			},
			[258] = {
				[0] = {
					label = "Council | wowcompare.io",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMY8AAAAAAAAAAAAAAGmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmNLjmNDAZMWA",
				},
				[1] = {
					label = "Delves | wowcompare.io",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMgZmHAAAAAAAAAAAAAwws4BGzY2mtxMzMz2MzsMY2YmZmxsxAjxwsY2mamBLwAYmNLjmFDAZMWA",
				},
				[2] = {
					label = "Open-World | wowcompare.io",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMgZmHAAAAAAAAAAAAAwws4BGzY2mtxMzMz2MzsMY2YmZmxsxAjxwsY2mamBLwAYmNLjmFDAZMWA",
				},
			},
		},
	},
	[6] = {
		specs = {
			[250] = {
				[0] = {
					label = "Delves | Deathbringer",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAjttBGwSwywEYYBgZwG",
				},
				[1] = {
					label = "Open-World | Deathbringer",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAjttBGwSwywEYYBgZwG",
				},
			},
			[252] = {
				[0] = {
					label = "Single Target | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwQGY2YoxCAMDA",
				},
				[1] = {
					label = "ST with Cleave | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwQGY2YoxCAMDA",
				},
				[2] = {
					label = "Council | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAAbmhZZGzMzMMzAWMbGGyAzGDNWwAMDA",
				},
				[3] = {
					label = "Open World | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGDzMzMzMNMmZGzYAAAAAAAAAMMzYMzMzMDAAYWMmZmZMzMgNzmhhMwswQjFMAzAA",
				},
				[4] = {
					label = "Single Target | Sanlayn",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYMmBAMbmhZxYmZmxMDDMwMGNW2AsNxGAMDA",
				},
				[5] = {
					label = "ST with Cleave | Sanlayn",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGDMwMGNW2AsNxGAMDA",
				},
				[6] = {
					label = "Council | Sanlayn",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMDzYmZmZAAbgZxYmZmZmxYgBmxoxyGgtJ2wAMDA",
				},
			},
		},
	},
	[7] = {
		specs = {
			[262] = {
				[0] = {
					label = "Delves | Farseer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxwMbMmZMmZGAAAAAsZmFYADYWYCZWAAjpZYGWMzMNMzMjhlZMjltZZwCzMzwMmhB",
				},
			},
			[263] = {
				[0] = {
					label = "StormSingle Target | Stormbringer",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZY2mZWWGAAAAAAAAAAYDgNzYYjsAzwQDWAwsMZGYZxMzMDjZmthlZmJwYZMzAAMjB",
				},
				[1] = {
					label = "StormSingle Target | Totemic",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYmgNAMLTmBWWMzMzwYmZZYZmZCMWGzMAAzMD",
				},
				[2] = {
					label = "StormDelves | Stormbringer",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZmtZmZGmlZmllxAAAAAAAAAAwGALmxwGZBmhhGsAgZZyAWYMzMMzMzywyMzkFWGLjZGAAjB",
				},
				[3] = {
					label = "StormOpen World | Stormbringer",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZmtZmZGmlZmllxAAAAAAAAAAwGALmxwGZBmhhGsAgZZyAWYMzMMzMzywyMzkFWGLjZGAAjB",
				},
			},
			[264] = {
				[0] = {
					label = "Delve | Totemic",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZmZGmlBzAWgFYGbasNgMDsxMjFmZZmZGZ2gZaMzYGGLGzYxsMMLMAAGG",
				},
			},
		},
	},
	[8] = {
		specs = {
			[64] = {
				[0] = {
					label = "Delves | Frostfire",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzMLz0Mz2sAAAgWAAAAAAgFAAAAAAAAA",
				},
				[1] = {
					label = "Open-World | Frostfire",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzMLz0Mz2sAAAgWAAAAAAgFAAAAAAAAA",
				},
			},
			[62] = {
				[0] = {
					label = "Delves | Sunfury",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFDmxMGTjxMAAAAAAMAgZmplZbbGAI2AAAAAAYDglZMMzMzMmhZmZMmxMzMGGD",
				},
				[1] = {
					label = "Open World | Sunfury",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFDmxMGTjxMAAAAAAMAgZmplZbbGAI2AAAAAAYDglZMMzMzMmhZmZMmxMzMGGD",
				},
			},
			[63] = {
				[0] = {
					label = "Delves | Frostfire",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjZzsZBzMmZ2MwMDTjxYmBAAAAAwMLz0MzysABAAsYMDmxMmZGLmtxYG2MzyM2MLMzAAAAAAAA",
				},
				[1] = {
					label = "Open-World | Frostfire",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsZgZmx0YMmZAAAAAAMzyMNzsMLQAAALmZGMjZYmZWmxYMzDYzMLzYxswAAAAAAAA",
				},
			},
		},
	},
	[9] = {
		specs = {
			[265] = {
				[0] = {
					label = "Hellcaller Single Target | Hellcaller",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZMMbGY2mZmhZbAAAAzMzMLmZGLzMzsZGzMAgZsADMLGNmBkZBsMDAAAAAAAAYMbA",
				},
				[1] = {
					label = "Soul Harvester Single Target | Soul Harvester",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZMMbGY2mZmhZbAAAAzMmZZmxYzMzswMzMAgZGLLDMgJYG2CMsNDAAAAAAAAMzMbG",
				},
				[2] = {
					label = "Delves/Open-World | Hellcaller",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZY2GAAAwMjZWmZegx2MzMLmxMDAYGLwAziRjZAZWALzAAAAAAAAAzwCA",
				},
			},
			[266] = {
				[0] = {
					label = "Delves / Open World | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAMzMzMjYWMMmtZmZYWGAAAAAAAAAAzAGzYYBGYb0CNswMzMmtxMbmZmZGjZGYmZmBzMAAA",
				},
				[1] = {
					label = "Delves / Open World | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAMzMzMjYWMMmtZmZYWGAAAAAAAAAAzMW2GYADYG2CZsxMzMmtxMbmZmZGjZYYmZmBzMAAA",
				},
			},
			[267] = {
				[0] = {
					label = "Single Target | Diabolist",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWIDsNsQjFMAAAAAAAGzMzAA",
				},
				[1] = {
					label = "Cleave build | Diabolist/Hellcaller",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYhMw2wCNWwAAAAAAAYMzMDAA",
				},
				[2] = {
					label = "Open-world/delves | Diabolist",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYhMw2wCNWwAAAAAAAYMzMDAA",
				},
			},
		},
	},
	[10] = {
		specs = {
			[268] = {
				[0] = {
					label = "Open-World/Delves | Shado-Pan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAmZMmBjlZmtZmZGAAAAAAAWWAxMDMDDmBLzMzYmlhZsMLz0ymFbjZY2AAgNEAAAz2s0MzMLMD2A",
				},
				[1] = {
					label = "Legacy Content/Speed | Shado-Pan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAmZMmhZsMjtZMzYAAAAAAA2WAxMDmBjFzglZmZMjhZmlZx0ymNbzMjZ2AAgNEAAAz2s1MzMLMD2A",
				},
			},
			[270] = {
				[0] = {
					label = "Delves Build | Conduit of the Celestials",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxsY2mZmxG2mlZbgtZbZZmZZBmYmBmhZWMwyMzMMLMzglZCAAAAACwilZbb2mZmAAAbA",
				},
			},
		},
	},
	[11] = {
		specs = {
			[102] = {
				[0] = {
					label = "Delve Main Team | Keeper of the Grove",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUwMzwYmZAzMMzMgZbmZzsMz2MzixMzMzsZMGmZsBWAwAstNWw0Mz2IAAAAbmZMA",
				},
			},
			[103] = {
				[0] = {
					label = "Single Target | Druid of the Claw",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwSAzAYmZ0MjZYmZYGz2MDAAAAAAAAAAAANzysMzsMgALYmZAA",
				},
				[1] = {
					label = "Single Target | Wildstalker",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMjZmBAAAAAYJYYAjZmRzMmhZmxyMsNzAAAAAAAAMAAAACAmtZWa2mZZDMDA",
				},
				[2] = {
					label = "AOE With BT | Druid of the Claw",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWMzMzMbzGsNzMzYmBAAAAAYJYYAjZmRzMmhZmxyMsNzAAAAAAAAAAAAQzsMLzMbDIwCYGAA",
				},
				[3] = {
					label = "AOE With BT | Wildstalker",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYAjZmRzMmhZmxyMsNGAAAAAAAAAAAACAmtZWa2mZZDmZAA",
				},
			},
			[104] = {
				[0] = {
					label = "Open-World | Elunes Chosen",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMWmxyMjxYghZmFLDgxgZGT0MjZmZGzihNGAAAAAAwwMzALbzshxsNAmCAAAsxMzAA",
				},
				[1] = {
					label = "Delves | Elunes Chosen",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMWmZMGDMMzsYZAMGMzYimZMzMzYWMsxAAAAAAAGGzALbzshxsMAmCAAAsxMzAA",
				},
			},
			[105] = {
				[0] = {
					label = "Delves | Wildstalker",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZGmtZmHAzy2witZAAAAAAAAAAAAsNYYmxwIYMjZmZmBjptZAAAAAAGAAmBAgAAAmtZ2a2mZxGjBYM",
				},
			},
		},
	},
	[12] = {
		specs = {
			[577] = {
				[0] = {
					label = "Ignition Delves Open World | Fel-Scarred",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbaaMmZGDbb",
				},
			},
		},
	},
	[13] = {
		specs = {
			[1473] = {
				[0] = {
					label = "Delves | Scalecommander",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzwgZmlZMmxMbAAAAAgBAAzMwwYoGmZGAAAAMzMz2YmZZMzAjtZMYBWGDjtBwMRshxA",
				},
			},
			[1467] = {
				[0] = {
					label = "Delves | Scalecommander",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMDDmZww0MmZysNz2MzMzYGzsNDYmZswMz2YGYAGsALjRjtBkZQwGmB",
				},
				[1] = {
					label = "Open-World | Scalecommander",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMDDMDzw0MmZysNz2MzMzYGzsNDYmZswMz2YGYAGsALjRjlBkZQwGmB",
				},
			},
			[1468] = {
				[0] = {
					label = "Delves | Chronowarden",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZbGzYADAAYghZGzMxMDAAAwMzMNjFzMjZmBAgxsZhFYgZ0QDGLwM",
				},
			},
		},
	},
}
addonTable.MostPopularMiscDB = talentData