local addonName, addonTable = ...
addonTable.MostPopularRaidDB = addonTable.MostPopularRaidDB or {}

local talentData = {
	updated = "2025-02-10 14:02:53",

	[1] = {
		specs = {
			[71] = {
				[0] = {
					label = "Single Target Raid | Slayer",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsZMDMjxMzgZGGGDzwAAAAAAAgHYMLzMzAIwYbZgFwAmhJkhBb",
				},
				[1] = {
					label = "Two-Target Raid | Colossus",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMPwsYZZZmBAAAADmGmBbGzAzYYmxiZGGGDzwAAAAAAAgHYMbzMzAsEAsYGDbwAzoNawgF",
				},
				[2] = {
					label = "Raid Multitarget | Slayer",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMPwsZZZZmZAAAAYw0wMDLDzAjlxMzgZGGYYGGAAAAAAA8AjZZmZGABGbLDsAGwMMhMMYD",
				},
			},
			[72] = {
				[0] = {
					label = "Single Target Raid | Slayer",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYCmhJwYbYD",
				},
				[1] = {
					label = "Multitarget Raid | Slayer",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmFmZMzMMDb2mhZGDAAAEmx2yALgJYGmAjthN",
				},
				[2] = {
					label = "Two-Target Raid | Mountain Thane",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAaYMgZMMDzywMzGMMDGmhZmltZGzMzCzMPwMzwMsxMMzYAAAgwYgNYZxoxMgMLwCWA",
				},
			},
			[73] = {
				[0] = {
					label = "Copy Raid Single Target | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwsFbYD",
				},
				[1] = {
					label = "Copy Raid Single Target with Cleave | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwsFbYD",
				},
				[2] = {
					label = "Copy Raid Council | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmxMmZbmlZmZ2YGDTzAzMDwsMwwGzMDYmHYYAAAAAAAzMAALbbAGGYDWWMaMDgZL2Y2A",
				},
				[3] = {
					label = "Copy Mountain Thane Raid Punish Build | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwsFbYD",
				},
				[4] = {
					label = "Copy Mountain Thane Raid Execute Build | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsNzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgttNADDsBLLGNmBwsFbYD",
				},
				[5] = {
					label = "Copy Colossus Raid Punish Build | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAzyYmZAzMD8AMDDAAAAAAYmBA8ALbbAGgNzYYjMwMsQjNsA",
				},
				[6] = {
					label = "Copy Colossus Raid Execute Build | Preview Build",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmtZmZ22YMMNDMzMAzyYmZAzMD8AMDDAAAAAAYmBA8AbbbAGgNzYYjMwMsQjNsA",
				},
			},
		},
	},
	[2] = {
		specs = {
			[65] = {
				[0] = {
					label = "Raid - Avenging Crusader | Lightsmith",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMALzMDmZbmZxMmlZG2mBmttZaLmxMmZGGY2yAAGAsBsxMzYGAEAwMzy2SbzMsBYGADjZG",
				},
				[1] = {
					label = "Raid - Melee | Herald",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMbzMLmxsMzwyMwstNTbxMmxMzwAzWGAwAGsBsxMzYmZZ2mZmlGAAQALAgNGDjZA",
				},
				[2] = {
					label = "Raid - Caster | Herald",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZW2mxsMzwyMwstZaLmxMmZGGY2yAAGwgNgNmZGzMLz2Mzs0AAACYBDgNGDjZA",
				},
			},
			[66] = {
				[0] = {
					label = "Raid Single Target | Lightsmith",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZYWGLjZmZmx2MzMzMGDDAAwAAAAAAAQyMzihZwYGzWbAwYADgBbDAAACwMzy2SbzMWMAGwMDDjB]",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Templar",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNMDzyYZMzMzMLbzMzYGMMAAADAAAAAAAJzMLGmBjZmZrNAYMgBwgtBAAYmptZZ2mBIwmZAGwMDDjB",
				},
				[2] = {
					label = "Raid Council | Templar",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNMDzyYZMzMzMLbzMzYGMMAAADAAAAAAAJzMLGmBjZmZrNAYMgBwgtBAAYmptZZ2mBIwmZAGwMDDjB",
				},
			},
			[70] = {
				[0] = {
					label = "Raid Single Target | Templar",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAIzMtNLz2MAgNgBAjxMMD",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Templar",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYMLzYbYwMmhlF2AAAIzMtNLz2MAgNgBAjxMMD",
				},
				[2] = {
					label = "Raid Council | Templar",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAittZmtltZGbmZWWMbDAAAAAAjmmhhZGbzgZbYMLzssNMYGGWWYDAAgMz02sMbzAA2AGAMGzwMA",
				},
				[3] = {
					label = "Raid Divine Storm | Herald of the Sun",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAiltZmNbzM2MmttZ2GAAAAAAGNNDDzM2mBz2wsMbzsshhxwwyGbDAMLz2Mzs1gAAAWAGAMGzwMA",
				},
			},
		},
	},
	[3] = {
		specs = {
			[253] = {
				[0] = {
					label = "Raid - Pack Leader Single-Target Build | Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALjGaYDAAAAAADAAAAAAwM2GmlZGDjxMzYYGzMGzMzkZYMzMzYMzYGGjZmBLzAzwsB",
				},
				[1] = {
					label = "Raid - Dark Ranger Single-Target Build | Dark Ranger",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswWIjFAAAAAAMAAAAAAAmxwsMzYYmxMzYGmlZGjZmZyMMmZmZMmZMDjxMzglZgZY2A",
				},
				[2] = {
					label = "Raid - Dark Ranger Raid Council Build | Dark Ranger",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswWIjFAAAAAAMAAAAAAAzYbGjZGzwMjZMjZGmxMzYmMDjZmZGjZGzwYMzMYZGYGmN",
				},
				[3] = {
					label = "Raid - Pack Leader Raid Quick Cleave Build | Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALjGaYDAAAAAADAAAAAAwM2mxsMzYYMzMDjZGmxYmZmMDjZmZGjZGzwYMzMYZGYGmN",
				},
			},
			[254] = {
				[0] = {
					label = "Raid Single Target | Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAmgZhtAzCAAAAAAYGzMzgZmhZmZYmZGjZ2mZ8AAAAAAAAwMMmZmZmZmZyMzYYmBGmZZGA",
				},
				[1] = {
					label = "Raid Single Target | Sentinel",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GQmNsBAAAAAAmxMzMDzMDzMzwMzMGzsNzAAAAAAAAMDjZmZmZmZmMzMGmZghZWmBA",
				},
				[2] = {
					label = "Raid Single Target with Cleave | Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAmgZhtAzCAAAAAAYmZmZGMzYYmZMzMzYMz2MDAAAAAAAwMMmZmZmZmZamxYYmBGmZZGA",
				},
				[3] = {
					label = "Raid Single Target with Cleave | Sentinel",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GQmNsBAAAAAAmZmZmZYMzYmZGzMzwYmtxAAAAAAAAMDjZmZmZmZmmZMGmZghZWmBA",
				},
				[4] = {
					label = "Raid Council | Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAmgZhtAzCAAAAAAYGzMzMMzMMzMjZmZGjZ2MDAAAAAAAwMMzMmZmxMamxYYmhxwMmZYB",
				},
			},
			[255] = {
				[0] = {
					label = "Sentinel Raid Council | Sentinel",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2C2mZsMjZmxYmZmZYmZMmZMDAAAAAAAAAAAAAAaGGzwMzYmxMMGmZYMjZWmBL",
				},
				[1] = {
					label = "Pack Leader Raid Council | Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YILw2wQDWmZsNMzMzYmZmZYmZMmZMDAAAAAAAAAAAAAAaGGzwMzYmxMMGmZYMjZWmBL",
				},
			},
		},
	},
	[4] = {
		specs = {
			[259] = {
				[0] = {
					label = "Raid Single Target | Deathstalker",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMbwyMAAAAAA022MzgZGjZmZZ2mZmxAjZmZGzsZbMDwmZZgBsEsMMBGWA",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Deathstalker",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMbwyMAAAAAA022MzgZGjZmZZ2mZmxAjZmZGzsZZMDwmZZgBsEsMMBGWA",
				},
				[2] = {
					label = "Raid Council | Deathstalker",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMbwyMAAAAAA022MzgZGjZmZZ2mZmxAjZmZGzsZZMDwmZZgBsEsMMBGWA",
				},
				[3] = {
					label = "Raid Easy Mode | Fatebound",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmBDAAAAAAzGsMDAAAAAAttNzMmZmxYmZWmlZmZMwYmZmxMb2GzAYgFYGjGzGIbDYD",
				},
			},
			[260] = {
				[0] = {
					label = "Raid Single Target | Fatebound",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhxYGzMjZmplZMLzAAAAAAgttZmBzMjlxMLz2AAAAwMDwAbwMGNmNAbTYxMA",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Fatebound",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhhZGzMjZmplZMLzAAAAAAgttZmBzMjlxMLz2AAAAwMDwAbwMGNmNAbTYxMA",
				},
				[2] = {
					label = "Raid Council | Fatebound",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttxM8AzMjFmZZ2GAAAAzMDwAbwMGNmNAbTYxMA",
				},
			},
			[261] = {
				[0] = {
					label = "Raid Build Single Target | Trickster",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYW0CtYDG",
				},
				[1] = {
					label = "Raid Build Single Target Play this | Deathstalker",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMsYWGYALglhJkZBG",
				},
				[2] = {
					label = "Raid Build Cleave | Trickster",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYW0CtYDG",
				},
				[3] = {
					label = "Raid Build Council | Trickster",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYW0CtYDG",
				},
			},
		},
	},
	[5] = {
		specs = {
			[256] = {
				[0] = {
					label = "Raid Mindbender | Voidweaver",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBAFgZbW2AjNb",
				},
				[1] = {
					label = "Raid Full Uppies | Voidweaver",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mNGzMz2YMzMmZzsMzMzMMAAAAAAAAAAAYWsMbDbzMDmFGzwMGsw2MNmYZAzMAoAMbzyGYsZD",
				},
			},
			[257] = {
				[0] = {
					label = "Raid Lightweaver | wowcompare.io",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWmMLGAyYwG",
				},
			},
			[258] = {
				[0] = {
					label = "Raid Single Target | wowcompare.io",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPwYmZ2GjZmZGzMzygZjZmZGzGDMGDziZbqZGsADgZ2sMaWMAkxYB",
				},
				[1] = {
					label = "Raid Single Target | Voidweaver",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMm5BAAAAAAAAAAAAAGmFzYmZWGzMzMGzMzygZjZmZGzGDMGDziZbqZGsAjZGAIAz2ssEMbsA",
				},
				[2] = {
					label = "Raid Cleave | wowcompare.io",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlxYmZ2GjZmZmtZmZZwsxMzMjZjBGjhZxsN1MDWgBwMbWGNLGAyYsA",
				},
				[3] = {
					label = "Raid Cleave | Voidweaver",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMz4BAAAAAAAAAAAAAmxsMGzMzyYmZmxsNzMLDmNmZmZMbMwYMMLmtpmZwCMmZAgAMbzySwsxC",
				},
			},
		},
	},
	[6] = {
		specs = {
			[250] = {
				[0] = {
					label = "Raid Single Target | Sanlayn",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAGYgZMassAyyA2AYGsB",
				},
				[1] = {
					label = "Raid Cleave | Sanlayn",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAGYgZMassAyyA2AYGsB",
				},
				[2] = {
					label = "Raid Council | Sanlayn",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAGYgZMassAyyA2AYGsB",
				},
			},
			[251] = {
				[0] = {
					label = "Raid Single Target | Deathbringer",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZmxYYGzMzMzMGmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCZsgZYMDA",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Deathbringer",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAYmZMzMGDzYmZmZmxwMZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTIjFMzYMDA",
				},
				[2] = {
					label = "Raid Council | Deathbringer",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAYmZMzMGDzYmZmZmxwMZGDjBMzMMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTIjFMzYMDA",
				},
			},
		},
	},
	[7] = {
		specs = {
			[262] = {
				[0] = {
					label = "General Raid Build | Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjZGzysMzMgZmZAAAAAwmZ2gBMgZjJkZBAMbTzA2WMzMNMzMjhtZmZwsMYZMGMjZ2YA",
				},
				[1] = {
					label = "Mobile Raid Single Target | Farseer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmZAAAAAwiZ2gBMgZjJkZBAMbTzA2WMzMNMzMjhtZmZwsMYZMzYmhZ2YA",
				},
				[2] = {
					label = "Raid Pure Single Target | Farseer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjZGzysMGMYmZAAAAAwiZ2gBMgZjJkZBAMbTzA2WMzMNMzMjhtZmZwsMYZMzYmhZ2YA",
				},
				[3] = {
					label = "Raid Single Target with Cleave | Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMzMzYWmlZmBMzMDAAAAAAbmxwGsAzohGbAgZbaGw2iZmphZmZMsNzMDmlBLjxghZ2YA",
				},
				[4] = {
					label = "Raid Council | Stormbringer",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjZGzysMzMgZmZAAAAAwmZ2gBMgZjJkZBAMbTzA2WMzMNMzMjhtZmZwsMYZMGMjZ2YA",
				},
			},
			[263] = {
				[0] = {
					label = "StormRaid Cleave | Stormbringer",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZmtZmZGmlZmllxAAAAAAAAAAwGAbmxwGZBmhhGsAgZZyMwyiZmZGGzMLDLzMTgxyYmBAwYA",
				},
				[1] = {
					label = "StormRaid Council | Stormbringer",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZYWmZWWGDAAAAAAAAAAbAsZGDbkFYGGawCAmlJzALLmZmZYMzsMsMzMBGLjZGAAjB",
				},
			},
			[264] = {
				[0] = {
					label = "Totemic Chain Heal Raid | Totemic",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyYzAsALwM20YZAZGYDzMLmx2MzMTmtFmZaMDzshlZMDGDzyYAAMM",
				},
				[1] = {
					label = "Farseer Chain Heal Raid | Farseer",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMz2M2GzMjZZ2GbGY2MzCMgJYWYCMWwMzCjtZmZmMbLMz0YGGbYZmZGMGmlxAAYYA",
				},
				[2] = {
					label = "Farseer Riptide Raid | Farseer",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmtxwwysN2MswmZWgBMBzCTgxCzMzyYsNzMzkZbxMz0YGGbYZGzgxwsMGAADA",
				},
			},
		},
	},
	[8] = {
		specs = {
			[64] = {
				[0] = {
					label = "Raid Single Target | Spellslinger",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGGzihZmZ0YMGzMGmZmZYMzMzYmZmZmZMYGIAAwMz2yyyMTbAAAAAAYAAAAAAAAA",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Spellslinger",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGGzihZmZ0YMGzMGmZmBzMzMzYmZmZmZmBzABAAmZ2WWWmZaDAAAAAADAAAAAAAAA",
				},
				[2] = {
					label = "Raid Council | Spellslinger",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGGzihZmZ0YMGzMGmZmBzMzMzYmZmZmZmBzABAAmZ2WWWmZaDAAAAAADAAAAAAAAA",
				},
				[3] = {
					label = "Raid Frostfire | Frostfire",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGGzihZmZ0YMGzMmZGzMDPwMzMDzMzMzMzMwMLz0Mz2sAAAgWAAAAAAwAAAAAAAAA",
				},
			},
			[62] = {
				[0] = {
					label = "Raid Single Target | Spellslinger",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAABMzstssMzELAAAAAAAglhhZmZmxMMzYMzMmZmxYGD",
				},
				[1] = {
					label = "Raid Cleave | Spellslinger",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAABMzstssMzELAAAAAAAglZMMzMzMmhZmZMmxMzMGGD",
				},
				[2] = {
					label = "Raid Council | Spellslinger",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAABMzstssMzELAAAAAAAglZMMzMzMmhZmZMmxMzMGGD",
				},
			},
			[63] = {
				[0] = {
					label = "Raid | Frostfire",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsZgZGmGzMmBAAAAAgZWmpZmlZBCAAYxYGMjZMzMWMLjxMPAmZZGMLMzAAAAAAAA",
				},
				[1] = {
					label = "Sunfury Raid | Sunfury",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBCYmZaZWWmBAYzYGMmZMzYWMLjZMzwMbzwMLYAAAAAAAA",
				},
			},
		},
	},
	[9] = {
		specs = {
			[265] = {
				[0] = {
					label = "Hellcaller Raid Cleave | Hellcaller",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZMMbGY2mZmhZbAAAAzMmZxMzYZmZmFzMzMAgZsADMLGNmBkZBsMDAAAAAAAAYMbA",
				},
				[1] = {
					label = "Hellcaller Raid Council | Hellcaller",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZMMbGY2mZmhZbAAAAzMmZxMzYZmZmFzMzMAgZsADMLGNmBkZBsMDAAAAAAAAYMbA",
				},
				[2] = {
					label = "Soul Harvester Raid Cleave | Soul Harvester",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZMMbGY2mZmhZbAAAAzMmZZmxYzMzswMzMAgZGLLDMgJYG2CMsNDAAAAAAAAMzMbG",
				},
				[3] = {
					label = "Soul Harvester Raid Council | Soul Harvester",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZMMbGY2mZmhZbAAAAzMmZZmxYzMzswMzMAgZGLLDMgJYG2CMsNDAAAAAAAAMzMbG",
				},
			},
			[266] = {
				[0] = {
					label = "Raid Single Target | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZ0CNswMzMsNmZxMzMzYMjhZmZmBmZAAA",
				},
				[1] = {
					label = "Raid Single Target | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAMzMzMjYWMMmtZmZYWGAAAAAAAAAAzMW2GYADYG2CZsxMzMmtxMLmZmZGjZAzMzMYmZAAA",
				},
				[2] = {
					label = "Raid Single Target Cleave | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAMzMzMjYWMMmtZmZYWGAAAAAAAAAAzAGzYYBGYb0CNswMzMmtxMbmZmZGjZGYmZmBzMAAA",
				},
				[3] = {
					label = "Raid Single Target Cleave | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAMzMzMjYWMMmtZmZYWGAAAAAAAAAAzMW2GYADYG2CZsxMzMmtxMbmZmZGjZYYmZmBzMAAA",
				},
				[4] = {
					label = "Raid Council | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZ0CNswMjZsNmZzMzMzYMjZMjZmxgZAAA",
				},
				[5] = {
					label = "Raid Council | Diabolist / Soul Harvester",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWGAAAAAAAAAAzMW2GYADYG2CZsxMjZsNmZzMzMzYMjZMjZmxgZAAA",
				},
			},
		},
	},
	[10] = {
		specs = {
			[268] = {
				[0] = {
					label = "Raid Default - Standard/Defensive | Master of Harmony",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjFzDsNzMzAAAAAAAwyCIMDMDzswYsNzMDzyYM2mlZaZ7BWsNmZmZBAAWmtplZbmlBAAEAGsA",
				},
				[1] = {
					label = "Raid Default - Advanced/Offensive | Shado-Pan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWAhZgZYmFGjtZmZYWGmx2sMTbL2mtZmxMLAAwGCAAgZbWamZmNmBL",
				},
				[2] = {
					label = "Raid - Single Target | Shado-Pan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWAhZgZYmFGjtZmZYWGmx2sMTbL2mtZmxMLAAwGCAAgZbWamZmNmBL",
				},
				[3] = {
					label = "Raid - Single Target with Cleave | Master of Harmony",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWAhZgZYmFGjtZmZYWGmx2sMTbb2mtZmxMLAAwysNtMbzsMAAgAYGsB",
				},
				[4] = {
					label = "Raid - Council | Master of Harmony",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjFzDsNzMzAAAAAAAwyCIMDMDzswYsNzMDzyYM2mlZaZ7BWsNmZmZBAAWmtplZbmlBAAEAGsA",
				},
			},
			[269] = {
				[0] = {
					label = "Shado-pan Raid Single Target | Shado-pan",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAQzys0MzMLAA",
				},
				[1] = {
					label = "Shado-pan Raid Single Target w/ Cleave | Shado-pan",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMzyMDMGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwGA0sMLNzMzCA",
				},
				[2] = {
					label = "Shado-pan Mythic and Raid Council | Shado-pan",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMMzMmlZAAsBANLzSzMzsAA",
				},
				[3] = {
					label = "Conduit of the Celestials Raid Single Target | Conduit of the Celestials",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAAAAAAAAAAAAAWWGGxMDMDDLmZsNzMDz2wMYZmAAYbmZGzYmZbGAALLzyysNzMBBAA",
				},
				[4] = {
					label = "Conduit of the Celestials Raid Single Target w/ Cleave | Conduit of the Celestials",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMzyMDMGAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzMmxY2mBAwyyssMbzMTQAAA",
				},
				[5] = {
					label = "Conduit of the Celestials Mythic and Raid Council | Conduit of the Celestials",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMgFmx2MzMMbDzglZCAglxMjZMmlZAAssMLLz2MzEEAA",
				},
			},
			[270] = {
				[0] = {
					label = "Rising Mist | Jade Bond Yulon Raid Healing Build | Conduit of the Celestials",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMTMzAzwMLGYZmZGmFbjhZxEAAAAAEgFLzyysNzMBAA2A",
				},
			},
		},
	},
	[11] = {
		specs = {
			[102] = {
				[0] = {
					label = "Raid Single Target | Keeper of the Grove",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZEAAAgNzMGDA",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Keeper of the Grove",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzMAbzMbGzsNzsYMzMzMbGjhZGbgFGgBYbbsgpZmlRAAAA2MzYMA",
				},
				[2] = {
					label = "Raid Council | Keeper of the Grove",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzMAbzMbGzsNzsYMzMzMbGjhZGbgFGgBYbbsgpZmlRAAAA2MzYMA",
				},
			},
			[103] = {
				[0] = {
					label = "Raid Single Target with Cleave | Wildstalker",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAALBDDYMzMamxMMzMWmhtZGAAAAAAAgBAAAQAwsNzSz2MLbgZAA",
				},
				[1] = {
					label = "Raid Council | Wildstalker",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYGzMb2MjtZmZGzMAAAAAALBDDYMzMamxMMzMWmhtZGAAAAAAAgBAAAQAwsNzSz2MLbgZAA",
				},
			},
			[104] = {
				[0] = {
					label = "Ripweaving Raid Single Target | Druid of the Claw",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAQNz2sMzsMAAWYmZAA",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Druid of the Claw",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAQNz2sMzsMAAWYmZAA",
				},
				[2] = {
					label = "Raid Council EC Build | Elunes Chosen",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMjZGLMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAQNz2sMzsMAAWYmZAA",
				},
			},
			[105] = {
				[0] = {
					label = "Raid - Ramping Rejuv | Keeper of the Grove",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBDjttxyitZAAAAAAAAAAAAsMDYGGzoZGwMmZmZGmptZAAAAAAGAAMgllxCmmZWGAAgAWYMAmB",
				},
			},
		},
	},
	[12] = {
		specs = {
			[577] = {
				[0] = {
					label = "Raid Single Target | Fel-Scarred",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzmmGMzMzw2G",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Fel-Scarred",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzmmGMzMzw2G",
				},
				[2] = {
					label = "Raid Council | Fel-Scarred",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGYmtZbWmZGMDssBLziZMMbaaMmZGDbb",
				},
				[3] = {
					label = "Raid ST Low Mover | Aldrachi Reaver",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzMjZmZMmJmZGAAAAAAwsZmxMYmZbmZ2YWGzMzYgltZbGMM22YSGmZmBLL",
				},
			},
			[581] = {
				[0] = {
					label = "Raid ST DPS | Fel-Scarred",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbaagZmZYbD",
				},
				[1] = {
					label = "Raid ST with Cleave | Fel-Scarred",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbaagZmZYbD",
				},
				[2] = {
					label = "Raid Council | Fel-Scarred",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYmZbMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbaagZmZYbD",
				},
			},
		},
	},
	[13] = {
		specs = {
			[1473] = {
				[0] = {
					label = "Raid Single Target | Scalecommander",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxygZGzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZWGzMwYbGDWglxwYbAMTEbYmB",
				},
				[1] = {
					label = "Raid Single Target with Cleave | Scalecommander",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZWGzMwYbGDWglxwYbAMTEbYmB",
				},
				[2] = {
					label = "Raid Council | Scalecommander",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZWGzMwYbGDWglxwYbAMTEbYmB",
				},
			},
			[1467] = {
				[0] = {
					label = "Raid | Scalecommander",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYGmBDYwYmGzMTmtx2MzMzYGzsNDYGzsNmZWGzADMGsALjRjtBkZQwGG",
				},
				[1] = {
					label = "Raid Single Target | Scalecommander",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GQmBBbYA",
				},
				[2] = {
					label = "Raid Council | Scalecommander",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMYADGz0YmZysNz2MzMzYGzsNDYGzsNmZWGzADMGsALjRjtBkZQwGG",
				},
			},
			[1468] = {
				[0] = {
					label = "Raid - Echowarden | Chronowarden",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMz2sNwYmZMLYmNmZAAAzMmxwYMjYmBAAAYmZmMjZGzyMzDAgBGzmFWgBmRDNgFYA",
				},
				[1] = {
					label = "Raid - Big Blossoms | Chronowarden",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2GzDMzMmBzCmZzMzYAAwMjZMMGzImZAAAAmZmJzYmxsNzAADMmNLsADMjGaALwA",
				},
				[2] = {
					label = "Raid - Echoflame | Flameshaper",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzghZmHYWwMbjZGAAgZMjhxYGxMDAAAwMzMZmtZGzyMzDAgZMbwCYBMDTIDsZYA",
				},
			},
		},
	},
}
addonTable.MostPopularRaidDB = talentData