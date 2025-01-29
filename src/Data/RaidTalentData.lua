local addonName, addonTable = ...
addonTable.raidTalents = addonTable.raidTalents or {}

local talentData = {
	updated = "2025-01-29 23:19:25", 

	[1] = {  -- Warrior
		specs = {
			[71] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMjZmNLLLzMAAAAYw0wMDbzYGYYMzMYmhBGmhBAAAAAAAPwYWmZmBYJwYZbgFwAmhJwghN",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
			},
			[72] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmFmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagZAjhZYWGzMzGMMjxwMMzstNzYmZWYmxMzwMsYbGmZMAAAQYGLbDsAGwMMBGbYD",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYAzwEYsNsB",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYAzwEYsNsB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxgZMMDWGmZWghZwwMMzssNzYmZ2YmZmZGmhNMMzYAAAgwYgNYZxoxMAmFYxYB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYAzwEYsNsB",
				},
			},
			[73] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNgZmBwyADbMzMMMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNzsB",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNDMzMAWGYYjZmhhZeghBAAAAAAMzAAsstBYYgNYZxoxMAmNsxsB",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmxMMbzsMzMz2mZMMNDMzMAjBG2YmZgZmHYYAAAAAAAzMAALbbAGGYDWWMaMDgZDbYD",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNgZmBYWGYYjZmBMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNzsB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
			},
		},
	},
	[2] = {  -- Paladin
		specs = {
			[65] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mJxMmxMzMGY2yAAGAsBsxMmZGAAAYmZZbptZG2wAYhxYGzA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBMYDYjZMzMAAAwMzy2SbzMshBwCjhxMA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBMYDYjZMzMAAAwMzy2SbzMshBwCjhxMA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mJxMmxMzMGY2yAAGAsBsxMmZGAAAYmZZbptZG2wAYhxYGzA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
			},
			[66] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNj5BMzyYZMzMzM2mZmZMYYAAAGAAAAAAASmZYYmhxMs1GAMGYAMD2GAAgZm2mlZbGAgNzgBgZYGGD",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNMjZ2GLjZmZmZZbmZGGmZMAAADAAAAAAAJzMMMzwYmxWAgxADgZw2AAAAAmZW2WabmxiZwAwgZMM",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLMzMzM2mZmhhZYAAAGAAAAAAASmZ2MMzwYmZ2CAMGAgZw2AAAMz02sMbzAAsZAAMzwwYA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZGDAAwAAAAAAAQamZYYmhxMzsFAgBGADsNAAAAgZmltl2mZsYGAgxwwYA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
			},
			[70] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAiltZmtltZGbmZ22MbDAAAAAAzWaGGmZsNDmthxsMzy2wgZYYZhNAMAAzMtNLz2MAgNgBAjhxMA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAiltZmtltZGbmZ22mZDAAAAAAzWTzwwMzsNDmthxsMzy2wgBDLLsBAAAzMtNLz2MAgNgBAjhhZA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
			},
		},
	},
	[3] = {  -- Hunter
		specs = {
			[253] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGbDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZmBzMGmxMDzYMzMTmxMmZmZmxMDDjhZGYGzYGsB",
				},
				["horror"] = {
					label = "Horror",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMzMmZMDjhZGGzwsMD2A",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYmZbGjZGDmZMMjZGmxMzMzkZYMjZmZMzYGGDzMMmhZZGsB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
			},
			[254] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMzMzMDmZmhZmxMzMjxMbmBAAAAAAAYGGzMzMzYGNzYMMzADzYmxsA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMzMzYYmhhZmZmZmZMzYzMGAAAAAAAYGGzYmZmZmJzYMMzwYYmlZwG",
				},
				["horror"] = {
					label = "Horror",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmxMzMjxMbmBAAAAAAAYGmZGzMzYGNzYMMzwYYGzMsA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
			},
			[255] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYD",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				},
				["horror"] = {
					label = "Horror",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYD",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYD",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
			},
		},
	},
	[4] = {  -- Rogue
		specs = {
			[259] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLwyMAAAAAA022MzMMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZmxM2mBAAAAAgZBWmBAAAAAg22mZmhZGMzMLz2MzMGYYmZGzsZZMDwmZZgBsAWGmADLA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLwyMAAAAAA02yMzMMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLwyMAAAAAA022MzMMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
			},
			[260] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGmZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw2yMzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
			},
			[261] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbZmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
			},
		},
	},
	[5] = {  -- Priest
		specs = {
			[256] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmtZmZmhBAAAAAAAAAAAzilZbYbmZwswYGmxgF2mpxELDYmBACwsNLLgxmN",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAADwysxYmZ2GjZmxMbmtZmZmhBAAAAAAAAAAAzilZDbzMDmFGGmxwssMmphYZAzMAQAmtZZBM2sB",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGPwMz2YMzwMbmtZmZmBAAAAAAAAAAAYWsMbDbzMDmFGGmxwsw2MNmYZAzMAQAmtZZDM2sB",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAAWmtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswYGmxgF2mpxELDYmBACwsNLLgxmN",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
			},
			[257] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
			},
			[258] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMz4BAAAAAAAAAAAAAmxsMYmZWmtZmZGz2MzsMY2YmZmxsxAjxwsY2mamBLwYmBACwsNLLgZjF",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAADz8ADAAAAAAAAAAAAwwsMGzMz2YMzMzsNzMLDmNmZmZMbMAjhZxsN1MDWgBwMbWGmNDAZMWA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
			},
		},
	},
	[6] = {  -- Death Knight
		specs = {
			[250] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGDzYmZmmZMjZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAGYgZMassBYbAbAMD2A",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghZYGjZMzMjlZMzMTzwwMjZMAAAAAYmZmZmZGzmZmxAAAMMzMzAAAAYgBmxoxyGgtBsBwMYD",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZmZsMjZmZaGGmZYMAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAADMwMGNW2AsNgNAzMYD",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
			},
			[251] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAYGjZMmZYGzMzMzMmxMZGDjBMzMMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAYGjZMGDzYmZmZmxMzMZGDjBMzMMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMjxYsMjZmZmZGzYmYMmxAmZMmxMzMzMzsYGAAAAAAAAAAAgxy2ADYBsMMBGLYGmZGA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
			},
			[252] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzYMjxMDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAAbmhZZGzMzMmZGwiZxwADMbM0YBAmBA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzYMjxMjlZMjZmGmZmZMjBAAAAAAAAAmZMmxMzMAwsZGmFMzMzDMzMDYxsYYgBmNGasAAzAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzYMjxMjlZMzMz0wMmZYMAAAAAAAAAGmZMjxYGAgNzwsMjZmZGzMDYxsYYgBmNGasAgZGA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
			},
		},
	},
	[7] = {  -- Shaman
		specs = {
			[262] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYZxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjZGz2sMzMgZmZAAAAAAYzMG2gFYGGasBAmtpZAbLMmGMzMbDLzMzYxsMYZmxghZ2GDA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMG2mZmBzyglxMzMzwMbMA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjZGzysMzMgZmZAAAAAAYzMG2gFYGGasBAmtpZAbMmphZmZ2G2mZmBzyglZGDGmZbMA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
			},
			[263] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMwyyMzMzwYmZDLzMTWwwYmBAYmZA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMwyyMzMzwYmZDLzMTWwwYmBAYmZA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMYWWYMGjZmZbGLzMTw2wYmBAYmZA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMwyyYMzgZmZxYZmZyCLDjZGAgZmB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
			},
			[264] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMbz2MLGWGWgFYGbasMAmB2YwCjtZmZmMLLMz0YGmZBLzMGMGmlxAAYYA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCzsMzMzkZbhZmGzwMwyMmxixwswAAYYA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMbz2MLGWwCsAzYTjlBwMwGzwCjlZmZmMLLmZmGzgBWmZmBjhZZMAAGG",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWGWgFYGbasMAmB2YwCzsNzMzkZbhZmGzgZxYxYGMGmlxAAYYA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
			},
		},
	},
	[8] = {  -- Mage
		specs = {
			[62] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMmNPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
				["horror"] = {
					label = "Horror",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbWMmxDMzsAzMzwYamxAAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
			},
			[63] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMmNPAjZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmxMzMzMLzYMmhNzsMDmFGAAAAAAAA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGGbWwMzMzs4BYMzw0YMmZAAAAAAMzyMNzsMLAAAgFjZYmxMzMzMLGzMmBmZZGMLMAAAAAAAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMmxs4BYMzw0YmxMDAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAAmZzixMmZmFPAjZGmGzMGDAAAAAgZWmpZmlZBAAAsYMDzMmZmZmZxYmxMwMLzgZhBAAAAAAA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
			},
			[64] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZxDYGPwY28AMPwMjGj5BGzMMzwMMzMzMzYmZmZGzMzYmZZmmZWmFAAAYBAAAAAAAAAAAAAAA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGNGzMmxghZYmZmZmZmZmZmxMzMmBAAAmZ2WWWmZaDAAAAAAAAAAAAAAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGMbzCmZegZmNDMzoxYmxMYmhZYmZmZmxMzMzMzMzwMAAAwMz2yyyMTbAAAAAAAAAAAAAAAA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMmFPAjZGNGzMmBzMMDzMzMzMmZmZmZmZGmBAAAmZ2WWWmZaDAAAAAAAAAAAAAAA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGGmFMzYmZxw8AzMaMmHYMDmZYGmZmZmZMzMzMjZmZMzsMTzMLzCAAAsAAAAAAAAAAAAAAAA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
			},
		},
	},
	[9] = {  -- Warlock
		specs = {
			[265] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMjxmZmZhZmZAAzMWWGYADYG2CMsNDAAAAAAAAMzMLA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWMzMWmZmZxMmZAAzYBGYWMaMDgZBsMDAAAAAAAAMjZD",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
			},
			[266] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZmx2YmNzMzMjxMzwMmZGwMAAA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxMWGzsZmZmZMMGmZmZGDzMAAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzAzMAAA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzAzMAAA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
			},
			[267] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGLYAAAAAAAMmZmBAA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjZmZmFzywyMzAAAAADzMLzMzMgxMGWgB2GWoxCGAAAAAAAzYYAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGLYAAAAAAAMmZmBAA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZZxMDAAAAMzMsMzMzYBGYWMaMDgZDbYAAAAAAAMmZmBAA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
			},
		},
	},
	[10] = {  -- Monk
		specs = {
			[268] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgF",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWwImZgZYsBsNzMjZWYmx2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgN",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgF",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsNzMDz2YmxmlHYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
			},
			[269] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGLLMsNzMDzGzMMLzEAALzMDzMjZbGAAbAgZZWamZmFAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMDbzMzwsNMDzyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
			},
			[270] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlttZmlFGamZGYGmhB2mZmhZbMGmFTAAAAAAALWmllZbmZCAAsA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAY2sMzyY2MmZmxiBsZGjZz2MzyCDNmZgZYGMYZmZGmtxYYWmJAAAAAAgFLzy2sNzMBAAWA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlttZmlFGamZGYGmhB2mZmhZbMGmFTAAAAAAALWmllZbmZCAAsA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlttZmlFGamZGYGmhB2mZmhZbMGmFTAAAAAAALWmllZbmZCAAsA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
			},
		},
	},
	[11] = {  -- Druid
		specs = {
			[102] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCmxwwMDYmZMzMYYbMMLzsNjFjZmZmZxYMmZGbgFGgBYbbsgpZmlBAAAAbmZMGA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCmZGGmZAzMMzMYYbMLmlZWmZWMmZmZmFjxwMjNwCDwAstNWw0MzyAAAAgNzMGA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCzMGGmZAzMMzMYYbmxwMbzYxYmZmZWMmZMzM2AbMAA22GLYamZZAAAAwmZGjBA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCzMzwgZAzMjZGDDbjZxYmtZmNzMzMzMbmlxwMsBWAwYZbmNMmtBwEAAAgFzMGA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
			},
			[103] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWDwMwwMjmZMzYmxYG2YAAAAAAMgBAAAAoZWmlZmtBAsAjZAA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMmRzMmZMzMMDbzMAAAAAAAADAAAAAwsNzSz2MLbwMDA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMb2GsNzMz8AzMAAAAAAbBMjBMzMamxMMzYMjZbmBAAAAAAAAAAAgmZZWmZ2GAwCMzAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWDwMwwMjmZMzYmxYG2YAAAAAAMgBAAAAoZWmlZmtBAsAjZAA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmBmZZmZMzsNbjx2MmxMzAAAAAAsFwMAmZGNzYmxMzwMmtxAAAAAAAAMAAAAAAz2MLNbzssBzMDA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwYGwYmZ0MjZGzMzYG2YAAAAAAAAAAAAoZWmlZmtBAsAjZAA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWDwMwwMjmZMzYmxYG2YAAAAAAMgBAAAAoZWmlZmtBAsAjZAA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZbWMzCzYmZzmZsNzMjZmBAAAAAYLgZAjxMamxMjZGjZMbjBAAAAAAAYAAAAAAmtZWa2mZZDmZAA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWAzYYYmZ0MjBzMDzY2MDAAAAAAAAAAAANzysMzsNAgFMzMAA",
				},
			},
			[104] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
			},
			[105] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbzMzMWMb4BYstZWWGzAAAAAAAAAAAAYbwwMmhRmBMzwMjhZabmBAAAAAAAADYZZsgpZmlBAAAwCzMDgB",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzwMzMMTLzMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDGmhhRzMgZmxMjhZabmBAAAAAAAADYZZsgpZmlBAAAwCmZAmB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
			},
		},
	},
	[12] = {  -- Demon Hunter
		specs = {
			[577] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
			},
			[581] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZZmBjtZMzDMjZYmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjhZkZmhZYmZbMYsNDzMjZYGzyMzYmZYGMAAAAALziZMMLMNwMzMjN",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjxMjMzMGDzMbjBjtZMzDMjZYmZMzYbmZYGMAAAAALziZMMbMNwMzMsB",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
			},
		},
	},
	[13] = {  -- Evoker
		specs = {
			[1467] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmhZADGz0YmZysNz2MzMzYGzsMDYGzsNmZWGzADMGsALjRjtBwMAshB",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmBDYwYmmxMTmtZ2mZmZGzYmlZAzYmtxMz2MzADMGsALjRjtBwMAshB",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYGmBDYwYmGzMTmtx2MzMzYGzsNDYGzsNmZWGzADMGsALjRjtBwMAshB",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmBzsZGMgBjZaGzMZ2GbjZmZMjZ2mBMjZ2GzMbzMDMwYwCsMGN2GAzAwGG",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmBzsZGmBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmBzwMmZADGmGzMTmtx2MzMzYGzsNDYGzsNmZWmZGYgxgFYZMasNAmBgNMA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
			},
			[1468] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzyMmxYmBAAMzwYgxMCzAAAAMzMTMbzMzsMzMAYGzGsAWAzwEYgNDD",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMbwCYBMDTgB2MMA",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
			},
			[1473] = {
				["all-bosses"] = {
					label = "All Bosses",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				["ansurek"] = {
					label = "Ansurek",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAAAAzMgBjpGzMzAAAAAjZ2GzMLjZGYsNjBLwyYYsNAmBxGmZA",
				},
				["broodtwister-ovinax"] = {
					label = "Broodtwister Ovi'nax",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				["horror"] = {
					label = "Horror",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				["kyveza"] = {
					label = "Ky'veza",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMz2YmBGbzYwCsMGGbDgZQshZG",
				},
				["rashanan"] = {
					label = "Rasha'nan",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				["sikran"] = {
					label = "Sikran",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				["the-silken-court"] = {
					label = "The Silken Court",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAAAAzMgHAjpGzMzAAAAgZMz2YmZbMzAjtZMYBWGDjtBwMI2wMD",
				},
				["ulgrax"] = {
					label = "Ulgrax",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
			},
		},
	},
}
addonTable.raidTalents = talentData