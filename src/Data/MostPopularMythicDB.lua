local addonName, addonTable = ...
addonTable.MostPopularMythicDB = addonTable.MostPopularMythicDB or {}

local talentData = {
	updated = "2025 02 09 18 11 57",

	[1] = {
		specs = {
			[71] = {
				[0] = {
					label = "Full AoE Mythic | Slayer",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFbLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjtlBWADYGmQGgN",
				},
				[1] = {
					label = "Juggernaut Mythic | Slayer",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzMzMjZMmFLLLzMDAAAADmGmZYZYGYsMmZGMzwYGPAzwAAAAAAAgHYMLzMzAsFYstMwCYAzwEyAsB",
				},
				[2] = {
					label = "Spiky AoE Mythic | Colossus",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLDzAjlxYGMzwYGDzwAAAAAAAgZMbDGgtYAsZGDLwAzoNaAsA",
				},
			},
			[72] = {
				[0] = {
					label = "Burst Mythic | Slayer",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGghZYMMzsBDzMjhZYmZbbmxMzsxMjZmhZYz2MMzYAAAgwM2WGYBMBzwEYshN",
				},
				[1] = {
					label = "Sustained Mythic | Mountain Thane",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGQmFYxYB",
				},
			},
			[73] = {
				[0] = {
					label = "Copy Mountain Thane Mythic Build | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZbmlZmZWYGDTjxDYMDglBG2YmZMDzYYAAAAAAAzMAALbbAGGYDWWMaMDgZL2Y2A",
				},
			},
		},
	},
	[2] = {
		specs = {
			[65] = {
				[0] = {
					label = "Mythic | Herald",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMziZMLzMsMDMbbz0WjZYMzMMwslBAMAMbAbMzMzMzysNzMLNAAgAWAmZAgxMA",
				},
				[1] = {
					label = "Mythic - Avenging Crusader | Lightsmith",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMziZMLzMsNDMbbz0WMjZMzMMwslBAMAYDYjZmZmBABAMzsst02MDbAmhFDYMD",
				},
			},
			[66] = {
				[0] = {
					label = "Mythic Lightsmith | Lightsmith",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZegZMzMLbzMzYGjZMAAADAAAAAAAt1MzsYYmhxMs1GAMGYAMw2AAAgAMzsss02MjFzAAAzwYA",
				},
				[1] = {
					label = "Mythic Templar | Templar",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZegZMzMLbzMzYGjZMAAADAAAAAAAt1MzsYYmhxMs1GAMGYAMw2AAAMz02sMbzAEYzMAAwMMG]",
				},
			},
			[70] = {
				[0] = {
					label = "Mythic | Templar",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aaGGmZsNDmthxsMzy2YGMDDLLsBAAQmZabWmtZAAbADAYYYA",
				},
			},
		},
	},
	[3] = {
		specs = {
			[253] = {
				[0] = {
					label = "Dark Ranger Mythic Build | Dark Ranger",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWIjFAAAAAAMAAAAAAAzMbzYMzYGmZMMjZGmxMzYmMDjZmZGjZGGGjZmhZZGsMD2A",
				},
				[1] = {
					label = "Pack Leader Mythic Build | Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALjGaYDAAAAAADAAAAAAwMz2MGzMmhZGDzYmhZMzMmJzwYmZmxYmhhxYmZYMDzyMYD",
				},
			},
			[254] = {
				[0] = {
					label = "Mythic | Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAmgZhtAzCAAAAAAYmZmxwMDDzMzMzMzYmxmZMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				},
				[1] = {
					label = "Mythic | Sentinel",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGQmNsBAAAAAAmZmZMjZYGzMzMzMzwMjNGDAAAAAAAMDjZMzMzMzkZMGmZYMMzyMYD",
				},
			},
			[255] = {
				[0] = {
					label = "Sentinel M | Sentinel",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2C2mZsMzMzMGzYmZMzYMmZMDAAAAAAAAAAAAAAaGGzYmZGzMMMGmZYMjZWmBb",
				},
				[1] = {
					label = "Pack Leader M | Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YILw2wQDWmZsNzMzMGzYmZMmZMmZMDAAAAAAAAAAAAAAaGGzYmZGzMMMGmZYMjZWmBb",
				},
			},
		},
	},
	[4] = {
		specs = {
			[259] = {
				[0] = {
					label = "Mythic | Deathstalker",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzixsNDAAAAAAttNzMYmxYmZWmlxYwMzYGMzMbbLjZA2MLDMglglhJwwyA",
				},
			},
			[261] = {
				[0] = {
					label = "Mythic Build   Play this | Trickster",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzYbbmZMzMjBjlZZAAAAYGMAGzmhBGYW0CtYDG",
				},
				[1] = {
					label = "Mythic Build | Deathstalker",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMzy0YGzMmBzMDzMzMMmtZxYstNzMmZmxAWmlBAAAgZwwiZZgBsAWGmQmFYA",
				},
			},
		},
	},
	[5] = {
		specs = {
			[256] = {
				[0] = {
					label = "Mythic | Voidweaver",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWsMbDmZGMLMmxYMGLsNTzMxyAmZAQBYWmtNwYzG",
				},
			},
			[257] = {
				[0] = {
					label = "Mythic | Oracle/wowcompare.io",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGQjFYB",
				},
			},
			[258] = {
				[0] = {
					label = "Mythic | wowcompare.io",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMgZmHAAAAAAAAAAAAAwws4BGzY2mtxMzMz2MzsMY2YmZmxsxAjxwsY2mamBLwAYmNLjmFDAZMWA",
				},
				[1] = {
					label = "Mythic | Voidweaver",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMgZGAAAAAAAAAAAAAGPws4BGzMzysNmZGz2MzsMY2YmZmxsxAjxwsY2mamBLwYmBACwsNLLBzGL",
				},
			},
		},
	},
	[6] = {
		specs = {
			[250] = {
				[0] = {
					label = "Mythic no  Gorefiends Grasp | Deathbringer",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAjttBGwSwywEYYBgZwG",
				},
				[1] = {
					label = "Mythic  Gorefiends Grasp | Deathbringer",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghZmZGjZmxMDzYmZmmhhZGzYAAAAAwMzMzMzMmNzMjBAAAzMzMAAAAjttBGwSwywEYYBgZwG",
				},
			},
			[251] = {
				[0] = {
					label = "Mythic Breath of Sindragosa | Deathbringer",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGgZGjZmxYYGzMzMzMGmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCZsgZYMDA",
				},
				[1] = {
					label = "Mythic Shattered Frost | Rider of the Apocalypse",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYmZmZmZGGmJzYYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAsYWMMwAzmGaYDzMGzMA",
				},
			},
			[252] = {
				[0] = {
					label = "Mythic/Delves | Sanlayn",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGDzMzMzMNMmZGzYAAAAAAAAAgZYGjZmZAgZzMMLzYmZmZMGDMwMGNWWAsNxGAMDA",
				},
				[1] = {
					label = "Rider M Setup | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGDzMzMzMNMmZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzA2MbGGyAzGDNWwAMDA",
				},
				[2] = {
					label = "Rider M No Apoc | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGDzMzMzMNMmZGzYAAAAAAAAAgZGDzMzMDAMbmhZBzMz8AzMzA2MbGGyAzGDNWAgZA",
				},
				[3] = {
					label = "Rider M No Setup | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGDzMzMzMNMmZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzA2MbGGyAzGDNWAgZA",
				},
				[4] = {
					label = "Rider M All Burst | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYmZmZmphhZGzYAAAAAAAAAMMzYMjZmZAAAzixMzMzMzMgNzmhhMwsxQjFMAzAA",
				},
				[5] = {
					label = "Rider M Hybrid | Rider of the Apocalypse",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGDzMzMzMNMmZGzYAAAAAAAAAgZGDjZmZAgZzMMLGzMzMjZGwmZzwQGY2YoxCAMDA",
				},
			},
		},
	},
	[7] = {
		specs = {
			[262] = {
				[0] = {
					label = "Mythic | Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYbWWmZmZGzysMzghZMDAAAAAAbmxwGsAzohGbAgZbaGw2iZmJMzMjhlZMjNzyYxiZmxYYmNGA",
				},
			},
			[263] = {
				[0] = {
					label = "StormMythic | Stormbringer",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNyCMDDNYBAzykBswYmZYmZmlhlZmJLsMWGzMAAzYA",
				},
				[1] = {
					label = "StormMythic | Totemic",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmJYDAzykZgFGzMDzMzsMsMzMBLjlxMDAwMzA",
				},
				[2] = {
					label = "ElementalistMythic | Stormbringer",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGjZMzwsMssMGAAAAAAAAAA2AYzMG2ILwMM0gFAMLTGwCjZmhZmZWGWmZmswyYZMzAAMDA",
				},
			},
			[264] = {
				[0] = {
					label = "Totemic Chain Heal M | Totemic",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZmZGmlBzAWgFYGbasNgMDsxMjFmZZmZGZ2gZaMzYGGLGzYxsMMLMAAGG",
				},
				[1] = {
					label = "Farseer Riptide M | Farseer",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmtZGmhZZsYGYzMLwAmgZhJwYhZmZbMzyMzQmNGz0YmxgxyMmxiZZYWYAAMA",
				},
				[2] = {
					label = "Farseer Chain Heal M | Farseer",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMz2M2mZmZGmtBDYzMLwAmgZhJwYhZGLMz2MzQmNYmGzMmZzYZGzgZZYWGDAghB",
				},
			},
		},
	},
	[8] = {
		specs = {
			[64] = {
				[0] = {
					label = "Mythic | Spellslinger",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzABAAmZ2WWWmZaDAAAAAAWAAAAAAAAA",
				},
				[1] = {
					label = "Mythic Frostfire | Frostfire",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZGGmBmZmZmZmZmZmZmZGzMLz0Mz2sAAAgWAAAAAAwsAAAAAAAAA",
				},
			},
			[62] = {
				[0] = {
					label = "Mythic | Spellslinger",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFgZmxYamxMAAAAAAMAAIgZmtlllZmYBAAAAAgNAWmxwMzMzYGMzMGzMzMzYYMA",
				},
			},
			[63] = {
				[0] = {
					label = "Mythic | Frostfire",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsZgZmx0YMmZAAAAAAMzyMNzsMLQAAALmZGMjZYmZWmxYMzDYzMLzYxswAAAAAAAA",
				},
				[1] = {
					label = "Sunfury Mythic | Sunfury",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsYgZmx0YMmZAAAAAAMQAzMTLzyyMAAbmZGMMjZGzyMbjhZmNzsNjlZgBAAAAAAA",
				},
			},
		},
	},
	[9] = {
		specs = {
			[265] = {
				[0] = {
					label = "Hellcaller M/AOE | Hellcaller",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZY2GAAAwMjZWmZegx2MzMLmxMDAYGLwAziRjZAZWALzAAAAAAAAAzwCA",
				},
				[1] = {
					label = "Soul Harvester M/AOE | Soul Harvester",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYCmhtADbzAAAAAAAAAzMWA",
				},
			},
			[266] = {
				[0] = {
					label = "Mythic | Diabolist /  Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZ0CNswMjZsNmZzMzMzYMjZMjZmxgZAAA",
				},
				[1] = {
					label = "Mythic | Diabolist /  Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWGAAAAAAAAAAzMW2GYADYG2CZsxMjZsNmZzMzMzYMjZMjZmxgZAAA",
				},
			},
			[267] = {
				[0] = {
					label = "Mythic AoE | Hellcaller",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZL2wAAAAAAAYmZGDAA",
				},
			},
		},
	},
	[10] = {
		specs = {
			[268] = {
				[0] = {
					label = "Mythic - Standard | Shado-Pan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZegtZmZGDAAAAAAwyCImZgZYwMYbmZGmlhZsMLz022DsYbMjZWAAgNEAAAz2s0MzMLYwG",
				},
				[1] = {
					label = "Mythic - Advanced/Scalding Brew | Shado-Pan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZegtZmZGDAAAAAAwyCImZgZYwMYbmZGmlhZsNLz02iNbzMjZWAAgNEAAAz2s0MzMLYwG",
				},
			},
			[270] = {
				[0] = {
					label = "Faeline StompMythic Build | Conduit of the Celestials",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxsY2mZmxG2mlZbgtZbZZmZZBmYmBmhZWMwyMzMMLMzglZCAAAAACwilZbb2mZmAAAbA",
				},
			},
		},
	},
	[11] = {
		specs = {
			[102] = {
				[0] = {
					label = "Mythic | Elunes Chosen",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmBYbmZxYGzMbmZmZmZ2MLjxMDbgFAMW2mZDjZZEYCAAAwiZGDA",
				},
				[1] = {
					label = "KOTG Mythic | Keeper of the Grove",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmxCsxsZWmZbmZxYmZmZWMGDzM2ALMADw22YBTzMLjAAAAsZmxAA",
				},
			},
			[104] = {
				[0] = {
					label = "EC Mythic | Elunes Chosen",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMzMzyMWmZmxYswgZWsAwYwMzMRzMzMzMjZB2YAAAAAAADjBssNzGGzyAYKAAAwGzMDA",
				},
			},
			[105] = {
				[0] = {
					label = "Mythic - Keeper of the Grove | Keeper of the Grove",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2wDwYZbstYbGAAAAAAAAAAAALDGMDmRwYGjZmZMLMtxAAAAAAGAAmBssMWw0MzyAAAEwCmZgZM",
				},
				[1] = {
					label = "Mythic - Wildstalker | Wildstalker",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2wDwYZZstYbGAAAAAAAAAAAALDGMDmRwYGjZmZMLMtxAAAAAAGAAmBAgAAAmtZ2a2mZxGmZgZM",
				},
			},
		},
	},
	[12] = {
		specs = {
			[577] = {
				[0] = {
					label = "Ignition Mythic / Council | Fel-Scarred",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbaaMmZGDbb",
				},
				[1] = {
					label = "Aldrachi Mythic | Aldrachi Reaver",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJzMzAAAAAAAmlZMMMzMbzMz2sNYAzGW2mlZwwYbjJZGzMDssA",
				},
			},
			[581] = {
				[0] = {
					label = "Mythic Baseline/Delves/Open World | Fel-Scarred",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjhZkZmBDzMbjxYsNjZMjZGmZ2mZmtZmhZYGAAAAglZxMGmFNNwMjhtN",
				},
				[1] = {
					label = "Mythic Defensive | Fel-Scarred",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMmZMMjMzMYYmZbMGjtZYmZMjHwY2mZmtZmhZYGAAAAglZxMGmFNNwMzMstB",
				},
				[2] = {
					label = "Mythic Cheat | Fel-Scarred",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMmZMMjMzMYYGLjhZsNDzMzwMmZ2mZmtZmhZYGAAAAglZxMGmFNNwMzMstB",
				},
			},
		},
	},
	[13] = {
		specs = {
			[1473] = {
				[0] = {
					label = "Mythic General Scale | Scalecommander",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzwgZmlZMGmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMLjZGYsNjBLwyYYsNAmJiNMzA",
				},
			},
			[1467] = {
				[0] = {
					label = "Mythic | Scalecommander",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMmZwMjxw0wMTmtZ2mZmZGzYmlZAzYsNmZMmBGgBLwyY0YZAZGEshZA",
				},
			},
			[1468] = {
				[0] = {
					label = "Mythic - Echowarden | Chronowarden",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYADAAmZMjhxYGxMDAAAwMzMZsNzYMzMAAMmNLsADMjGawYBG",
				},
			},
		},
	},
}
addonTable.MostPopularMythicDB = talentData