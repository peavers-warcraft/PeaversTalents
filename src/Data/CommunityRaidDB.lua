local addonName, addonTable = ...
addonTable.CommunityRaidDB = addonTable.CommunityRaidDB or {}

local talentData = {
	updated = "2025-02-10 13:21:01",

	[1] = {
		specs = {
			[71] = {
				[0] = {
					label = "Slayer Single Target Raid Talents",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsZMDMjxMzgZGGGDzwAAAAAAAgHYMLzMzAIwYZbgFwAmhJwwgN",
				},
				[1] = {
					label = "Slayer Multitarget Raid Talents",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMPwsZZZZmZAAAAYw0wMDLDzAjlxMzgZGGYYGGAAAAAAA8AjZZmZGABGLbDsAGwMMBGGsB",
				},
			},
			[72] = {
				[0] = {
					label = "Slayer Single Target Raid Talents",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZssNwCYAzwEYsNsB",
				},
				[1] = {
					label = "Slayer Multitarget Raid Talents",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmx22ALgBMDTgx2wG",
				},
			},
			[73] = {
				[0] = {
					label = "Standard Raid Mountain Thane",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNDMmBYMwwGzMDMz8ADDAAAAAAYmBAYZbDwwAbwyiRjZAMbYzYD",
				},
				[1] = {
					label = "Alternative Raid Colossus",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2GjhpZgxMAjxMzAmZGYYGGAAAAAAwMDAwy2GgBYxMG2gBmhFasZsA",
				},
				[2] = {
					label = "Offensive Raid",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmtZmZ22YMMNDMzMAWGzMDYmZghZYAAAAAAAzMAgZzGgBYxMG2gBmhFashFA",
				},
			},
		},
	},
	[3] = {
		specs = {
			[253] = {
				[0] = {
					label = "Raid AoE Dark Ranger",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZmBzMGmxMDzYMzMTmhxMzMzMmZMDjhZGYGmlZwG",
				},
				[1] = {
					label = "Raid AoE Pack Leader",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGbzYMzYwMzMDjZGPwMGzMzkZYMjZmZMzYGGDzMMLDmlZwG",
				},
			},
			[254] = {
				[0] = {
					label = "Raid AoE Sentinel",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzG2AAAAAAAzMzMzMMmZMzMjZmZYMz2YAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				},
				[1] = {
					label = "Raid AoE Dark Ranger",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMzMzMDmZmhZmxMzMjxMbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
			},
			[255] = {
				[0] = {
					label = "Raid AoE Pack Leader",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMmxMzMGzMmBAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
			},
		},
	},
	[4] = {
		specs = {
			[259] = {
				[0] = {
					label = "Deathstalker Raid Talents",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMbwyMAAAAAA022MzgZGjZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				[1] = {
					label = "Fatebound Raid Talents",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmBDAAAAAAzGsMDAAAAAAttNzMmZmxYmZWmtZmZMwYmZmxMb2GzAYgFYGjGzCgtBsB",
				},
			},
			[260] = {
				[0] = {
					label = "Fatebound Raid Talents Hidden Opportunity",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhxYGzMjZmplZMLzAAAAAAgttxMYmZsMmZZ2GAAAAzMDwAbwMGNmNAbDsYG",
				},
				[1] = {
					label = "Fatebound Raid Talents Keep It Rolling",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[2] = {
					label = "Trickster Raid Talents Hidden Opportunity",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAMmNDDMwswCtxmZA",
				},
			},
			[261] = {
				[0] = {
					label = "Subtlety Single Target Raiding Build",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMsZWGYALglhJwsAD",
				},
			},
		},
	},
	[5] = {
		specs = {
			[256] = {
				[0] = {
					label = "Voidweaver Mindbender Raid",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzitZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxmN",
				},
				[1] = {
					label = "Oracle Raid",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYmZ2GjZGmZzsMzMzMAAAAAAAAAAAAzitZbYbmZwswwMjxgF2mpxELDAzsgNCjZbAGbYB",
				},
			},
			[257] = {
				[0] = {
					label = "Raid wowcompare.io Lightweaver Build",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALwY7BmxMDzwsNjZmxYZGWGAAAAYWsMbDbzMDmFGzYmxglNYGTNLAAzsYZY2MAkxgN",
				},
				[1] = {
					label = "Raid Oracle Divine Word Build",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAsNGbPwMzMDzwsNYmBLzMWGAAAAYWsNbDbzMDmFGmZmxglNYGTNLAYmFsRYMLDwYBWA",
				},
			},
		},
	},
	[6] = {
		specs = {
			[251] = {
				[0] = {
					label = "Breath Raid Talents",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDDzMzMzMmxMNzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				[1] = {
					label = "Obliteration Raid Talents",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAwAYGzMjxYsMjZmZmZGzYmYMMYYmZMzwMzMzMzsMzAAAAAAAAAAAAMW2GYALglhJwYBzYGzAA",
				},
			},
			[252] = {
				[0] = {
					label = "Raid Build",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmpZMzMzwYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwmZxwADMbM0YBAmBA",
				},
				[1] = {
					label = "Raid Disease Build",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmpZMjZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwmZxwADMbM0YBAmBA",
				},
			},
		},
	},
	[7] = {
		specs = {
			[263] = {
				[0] = {
					label = "Storm Storm Raid / Single-Target",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZY2mZWWGAAAAAAAAAAYDgNzYYDWgZYoBLAYWmMDssYmZmhxMzywyMzEYsMmZAAmxA",
				},
				[1] = {
					label = "Elementalist Elementalist Raid / Single-Target",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMzMMMzMzwsMzssMAAAAAAAAAAwGAbmxwGsAzwQDWAwsMZGYZxMzMDjZmlhlZmJwYZMzAAYA",
				},
			},
			[264] = {
				[0] = {
					label = "Totemic Raid Chain Heal",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxML2mZxwCWgFYGbasMAmB2YGWGjtZmZmMbLMz0YGmZBLzYGMGmlxAAYYA",
				},
				[1] = {
					label = "Farseer Raid Chain Heal",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmBLz2MLGWYzMLwAGwswEYswMmlxYbmZmJz2CzMNmhZWwyMmBjhZZMAAGG",
				},
				[2] = {
					label = "Farseer Raid Riptide",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYMzMjZmlxwMzysNWmhF2MzCMgBMLMBGLMzYhx2MzMTmtFzMTjZwshlZMDGDzyYAAMA",
				},
			},
		},
	},
	[8] = {
		specs = {
			[62] = {
				[0] = {
					label = "Spellslinger Raid Cleave Talents",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGGmZmxMzYmZGDjB",
				},
				[1] = {
					label = "Sunfury Raid Cleave Talents",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAMzMtMbLzAAYDAAAAAAAsMjBzMzMmhZmZMmxMzMGzYA",
				},
			},
		},
	},
	[10] = {
		specs = {
			[268] = {
				[0] = {
					label = "Default/DefensiveRaiding Talents",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjFzDsNzMzAAAAAAAwyCIMDMDzswYsNzMDzyYM2mlZaZ7BWsNmZmZBAAWmtplZbmlBAAAADWA",
				},
				[1] = {
					label = "Advanced/OffensiveRaiding Talents",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWAhZgZYmFGjtZmZYWGmx2sMTbL2mtZmxMLAAwGAAAwsNLNzMzGzgF",
				},
			},
			[270] = {
				[0] = {
					label = "Rising Mist Raid Talents",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mltlZmlFmRzMzAzYmZBYZmZGmNGDWMBAAAAAAsYZWWmlZmJAAwC",
				},
				[1] = {
					label = "Tear of Morning Raid Talents",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMWGgZmZs9AsYb2mZWsMLbLzMLLY0MzMwMmZWYwyMzMMbMGsYCAAAAAAYxyssMLzMTAAgF",
				},
			},
		},
	},
	[11] = {
		specs = {
			[103] = {
				[0] = {
					label = "Wildstalker Druid of the Claw Raid / Single-Target",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMjZmBAAAAAYJYMDYMGamxMjZGjZYbmBAAAAAAAYAAAAAAmtZ2a2mZZDmZAA",
				},
			},
			[104] = {
				[0] = {
					label = "Single-Target/Raid Talents",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				},
			},
			[105] = {
				[0] = {
					label = "Raid Healing",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBPAjttZWWsNDAAAAAAAAAAAglBYGGGNzAmZYmZGmptZGAAAAAAAAMgllxCmmZWGAAAALMzMAzA",
				},
			},
		},
	},
	[12] = {
		specs = {
			[577] = {
				[0] = {
					label = "Aldrachi Reaver Fel-Scarred Raid / Single-Target",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMzMhZGAAAAAAwsNMmZMGLzMz2sNLjZGmZBLbwysYGDzGTDmZGD2A",
				},
			},
			[581] = {
				[0] = {
					label = "Fel-Scarred Raid Build",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjxMjMzMGDjZbmBjtZMzDMjZGmZMzMbzMDzgBAAAAYZWMjhZjpBmZMsB",
				},
			},
		},
	},
	[13] = {
		specs = {
			[1468] = {
				[0] = {
					label = "Chronowarden Raiding - Echo Flameshaper Raiding - Emerald Blossoms",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAMzMjZbmZMMYWwMbmZYAAwMDjhxYGhZAAAAmZmJzsNzMjZGAYGzGsAWAzwEYMsZYA",
				},
				[1] = {
					label = "Chronowarden Raiding - Emerald Blossoms Flameshaper Raiding - Reversion",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzgxMzYWwMbjZGAAwMDjhxYGhZAAAAmZmJzsNzMjZmHAAzY2gFwCYGmADsZYA",
				},
			},
		},
	},
}
addonTable.CommunityRaidDB = talentData