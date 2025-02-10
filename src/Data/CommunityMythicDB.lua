local addonName, addonTable = ...
addonTable.CommunityMythicDB = addonTable.CommunityMythicDB or {}

local talentData = {
	updated = "2025-02-10 13:21:01",

	[1] = {
		specs = {
			[71] = {
				[0] = {
					label = "Colossus Mythic Talents",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLDzAjlxYGMzwYGDzwAAAAAAAgZMbDGgtYAsZGDLwAzwGNAWA",
				},
				[1] = {
					label = "Slayer Mythic Talents",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFbLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwG",
				},
			},
			[72] = {
				[0] = {
					label = "Mountain Thane Mythic Talents",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				},
				[1] = {
					label = "Slayer Mythic Talents",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGghZYMMzsBDzMjhZYmZbbmxMzsxMjZmhZYz2MMzYAAAgwM22GYBMgZYCM2wG",
				},
			},
			[73] = {
				[0] = {
					label = "Standard AoE/Mythic Mountain Thane",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZWYGDTjBjZAsMwwGzMDDz8AjZAAAAAAAzMAALbbAGGYDWWMaMDgZDbMbA",
				},
				[1] = {
					label = "Alternative AoE/Mythic Colossus",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGMbzsMzMzyCjhpxgxMAWGzMDYmZYgZMDAAAAAAYmBAYZbDwAsZGDLwAzwCN2YWA",
				},
			},
		},
	},
	[2] = {
		specs = {
			[65] = {
				[0] = {
					label = "Mythic",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMziZMLzMjlZAbbz0WjZYMzMMwslBAMAYDYjZmZmZWmtZmZpBAAAYBYgNAjZA",
				},
			},
			[66] = {
				[0] = {
					label = "AoE/Delves/Mythic Talents Lightsmith",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZegZMzMLbzMzYGjZMAAADAAAAAAAt1MzwgZYMjZrNAYMwAYgtBAAAAMzsss02MjFzgBAGGGD",
				},
			},
			[70] = {
				[0] = {
					label = "Templar Mythic",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aaGGmZsNDmthxsMzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
				},
				[1] = {
					label = "Herald of the Sun Mythic",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aaGGmZsNDmthxsMzy2YGMDDLLsBAmlZbmZ2aAAAgFgBAMMMA",
				},
			},
		},
	},
	[3] = {
		specs = {
			[253] = {
				[0] = {
					label = "Mythic Dark Ranger",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMDzMGmxMDzYmZMTmhxMmZmxMjZYMMzwYGmlZwG",
				},
				[1] = {
					label = "Mythic Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYmZbGjZGzwMjhZMzwMmZGzkZYMjZmZMzYGGDzMMmhZZGsB",
				},
			},
			[254] = {
				[0] = {
					label = "Mythic/Delves Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMzMzYYmhhZmZmZmZMzYzMGAAAAAAAYGGzYmZmZmJzYMMzwYYmlZwG",
				},
				[1] = {
					label = "Mythic/Delves Sentinel",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				},
			},
			[255] = {
				[0] = {
					label = "Mythic/AoE Sentinel",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				},
				[1] = {
					label = "Mythic/AoE Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMzMGzMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				},
			},
		},
	},
	[4] = {
		specs = {
			[259] = {
				[0] = {
					label = "Deathstalker Mythic Talents",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzixsNDAAAAAAttNzMYmxYmZWmlxYwMzYGMzMbbLjZA2MLDMgFwywEYYZA",
				},
			},
			[260] = {
				[0] = {
					label = "Fatebound Mythic Talents Hidden Opportunity",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmhHYmZswMLz2AAAAwMDwAbwMGNmNAbDsYG",
				},
				[1] = {
					label = "Fatebound Mythic Talents Keep It Rolling",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
			},
			[261] = {
				[0] = {
					label = "Subtlety Mythic Plus Build",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNLGjttxMmZmxgxysMAAAAmZwAYMbGGYgZhFaxGM",
				},
			},
		},
	},
	[5] = {
		specs = {
			[256] = {
				[0] = {
					label = "Voidweaver Mythic/Delve",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDzyYMzMmZzsNzMzMAAAAAAAAAAAAzitZbYbmZwswwYMGmF2mpZmYBYmBACwsNbLgxmN",
				},
			},
			[257] = {
				[0] = {
					label = "Mythic and Delve Talents",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAgNjZZGMzYmBGzMMWmZmlBAAAAsYb2wyMzgZhZZGzMGjlFYmZKLAYmFsRYMLDwYBWA",
				},
			},
			[258] = {
				[0] = {
					label = "wowcompare.io Voidweaver Mythic",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMgZmHAAAAAAAAAAAAAwws4BGzY2mtxMzMz2MzsMY2YmZmxsxAjxwsY2mamBLwAYmNLDzmBgMGLA",
				},
			},
		},
	},
	[6] = {
		specs = {
			[250] = {
				[0] = {
					label = "AoE/Cleave/Mythic Talents",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghZmZGjZmxMDzYmZmmhhZGzYAAAAAwMzMzMzMmNzMjBAAAzMzMAAAAjttBGwCYZYCMsAwMYD",
				},
			},
			[251] = {
				[0] = {
					label = "AoE/Mythic Talents",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYwMzMzMmxMNzYYYGMzYmhZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZmxMA",
				},
			},
			[252] = {
				[0] = {
					label = "Mythic Build",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYGzMzMNjhZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzA2MLGGYgZjhGLYAmBA",
				},
				[1] = {
					label = "Mythic Festering Scythe Build",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYGzMzMNMMzMzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzA2MLGGYgZjhGLAwMA",
				},
			},
		},
	},
	[7] = {
		specs = {
			[262] = {
				[0] = {
					label = "EoGS AoE/M Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYbWWmZmZGzysMzAMjZAAAAAAYzMG2gFYGGasBAmtpZAbwMNMzMjZsMjZsYWGmlZmZwMmZbMA",
				},
				[1] = {
					label = "Smooth Brain easy M Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYbWWmZmZGz2sMzghZMDAAAAAAbmxwGsAzwQjNAwsNNDYDmphZmZMjlZMjFzywsMzMjxwMbMA",
				},
			},
			[263] = {
				[0] = {
					label = "Storm Storm Mythic / AoE",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWYmZmhZMzywyMzkFWGLjZGAgZMA",
				},
				[1] = {
					label = "Elementalist Elementalist Mythic / AoE",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGjZMzwsMssMGAAAAAAAAAA2AYzMG2gFYGGawCAmlJDYhxMzwMzMLDLzMTWYZsMmZAAmB",
				},
			},
			[264] = {
				[0] = {
					label = "Totemic Mythic",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZmZGsMYGwGsBzYTjtBwMwGzMzCzsMzMjMbLMz0YmhhxixMYWGmFGAADD",
				},
				[1] = {
					label = "Farseer Mythic",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMz2M2mZmZGmtBzAbmZBGwAmFmAjFmZswMLzMDZ2WMzMNMjZYsYMDmlhZhBAwwA",
				},
			},
		},
	},
	[8] = {
		specs = {
			[62] = {
				[0] = {
					label = "Spellslinger Mythic Talents",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFgZmxYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZYYmZGjZmZmZMMG",
				},
				[1] = {
					label = "Sunfury Mythic Talents",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFgZmxYamxMAAAAAAMAgZmplZbZGAAbAAAAAAsBwyMGmZmZGzwMzMGzYmZGDjB",
				},
			},
			[63] = {
				[0] = {
					label = "Cleave-based Mythic Talents",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmhZmFDPgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmxMmZmZZGjxMPgNzsMjFzCDAAAAAAAA",
				},
				[1] = {
					label = "Flamestrike-based Mythic Talents",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmhZmFDPgZGmGzMmBAAAAAgZWmpZmlZBAAAsYmZwMmhZmZZGjxMPgNzsMjFzCDAAAAAAAA",
				},
			},
		},
	},
	[9] = {
		specs = {
			[265] = {
				[0] = {
					label = "AoE/Mythic Soul Harvester Talents",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWGAAAwMzMzyMjxyMzMLMzMDAYmxy2ADYAzwWghtZAAAAAAAAgZYB",
				},
				[1] = {
					label = "AoE/Mythic Hellcaller Talents",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWGAAAwMjZWmZG2mZmZxMmZAAzYBGYWMaMDgZBsMDAAAAAAAAMDLA",
				},
			},
			[266] = {
				[0] = {
					label = "AoE/Mythic Diabolist Talents",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYbYhGWYmxMz2YmNzMzMjxMGmxMzYwMAAA",
				},
				[1] = {
					label = "AoE/Mythic Soul Harvester Talents",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzMW2GYADYGWCM2YmxMz2YmNzMzMjxMGmxMzYwMAAA",
				},
			},
			[267] = {
				[0] = {
					label = "AoE/Mythic Diabolist Talents",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWmFjxMzsYWmZZZmZAAAAgxMsMzMzAGzYYBGYbYhGLYAAAAAAAMMmBAA",
				},
				[1] = {
					label = "AoE/Mythic Diabolist Shadowburn Variant",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzmZbZmZAAAAgZmhlZmZGwYGDLwAbDL0YBDAAAAAAghZmBAA",
				},
				[2] = {
					label = "AoE/Mythic Hellcaller Talents",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWmNjxMmFzmZZZmZAAAAghZmlZmZGLwAziRjZAMbYDDAAAAAAgZMmBAA",
				},
			},
		},
	},
	[10] = {
		specs = {
			[268] = {
				[0] = {
					label = "DefaultMythic Talents",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZegtZmZGDAAAAAAwyCImZgZYwMYbmZGmlhZsMLz022DsYbMjZWAAgNAAAgZbWamZmFMYD",
				},
				[1] = {
					label = "AdvancedMythic Talents",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZegtZmZGDAAAAAAwyCImZgZYwMYbmZGmlhZsNLz02iNbzMjZWAAgNAAAgZbWamZmFMYD",
				},
			},
			[269] = {
				[0] = {
					label = "AoE/Mythic/Delve Talents",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMMzMmlZAAsBAmlZpZmZWAA",
				},
			},
			[270] = {
				[0] = {
					label = "Conduit of the Celestials Mythic Talents",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGYZmlxsY2mZmxG2mlZbgtZbbZmZZhZmYmBmhZwgtZmZY2YmBLPwEAAAAAAwilZZbWmZmAAAbA",
				},
				[1] = {
					label = "Master of Harmony Mythic Talents",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGYZmlxsY2mZmxG2mlZbgtZbbZmZZhZmYmBmhZwgtZmZY2YmBLPwEAAAAgZbab2mZZ2AAAAAbA",
				},
			},
		},
	},
	[11] = {
		specs = {
			[102] = {
				[0] = {
					label = "Multi-target Mythic",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjiZmxMGjZAzMMzMYMbYzsMz2MzixMzMzsYMGmZsBWAwAstNWw0MzyAAAAgNzMGA",
				},
			},
			[103] = {
				[0] = {
					label = "Wildstalker Druid of the Claw Mythic / AoE",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZwMzMzmNzYbmZm5BmZAAAAAAWCYGDYmhmZMDzMjlZMbzMAAAAAAAAAAAAAAmtZWa2mZZDmZAA",
				},
			},
			[104] = {
				[0] = {
					label = "AoE/Mythic Talents",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmhZWmZMjZMzYhZGmFLAMGMzMT0MzMzMzYWgNGAAAAAAwwYALbzshxsMAmAAAA2YmZAA",
				},
			},
		},
	},
	[12] = {
		specs = {
			[577] = {
				[0] = {
					label = "Aldrachi Reaver Fel-Scarred Mythic / AoE",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMhZGAAAAAAwsNMmZMzAzsNbzyMzgZglNYZWMjhZhpxYmZMYD",
				},
			},
			[581] = {
				[0] = {
					label = "Fel-Scarred General Mythic Build",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjhZmMzMYYmZbMGjtZYmZMzwY2mZmtZmhZwAAAAAsMLmxwsw0AzMG2A",
				},
				[1] = {
					label = "Fel-Scarred High Key Mythic Build",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjhZmMzMYYGbjxMjtZYmZMjHwY2mZmtZmhZwAAAAAsMLmxwsw0AzMG2A",
				},
			},
		},
	},
	[13] = {
		specs = {
			[1473] = {
				[0] = {
					label = "Scalecommander Mythic/Delve Build",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzYZgZWmxYGzsBAAAAAAAgZGMDjxUDzMDAAAAMmZbMzYMzAjtZMYBWGDjtBwMI2wYG",
				},
				[1] = {
					label = "Chronowarden Mythic/Delve Build",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjtZmZGLDmZWmBzYmNAAAAAAAAMzgZYMmaYmZAAAAgxMbjZGjZGYsNDMmNLsADMDDNwCmZG",
				},
			},
			[1467] = {
				[0] = {
					label = "AoE/Mythic Talents",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDYw4BmmxMTmtZ2mZmZGzYmtZAzYmNmZWmZGYgxgFYZMasNAmBgNMA",
				},
			},
			[1468] = {
				[0] = {
					label = "Chronowarden Flameshaper Mythic",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMjxYGxMDAAAwMzMNjtZGjZGAAMmNLsADMDDNYsAD",
				},
			},
		},
	},
}
addonTable.CommunityMythicDB = talentData