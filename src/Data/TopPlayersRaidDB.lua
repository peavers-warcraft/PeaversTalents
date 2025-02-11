local addonName, addonTable = ...
addonTable.TopPlayersRaidDB = addonTable.TopPlayersRaidDB or {}

local talentData = {
	updated = "2025-02-11 16:32:42",

	[1] = {
		specs = {
			[71] = {
				[0] = {
					label = "All Bosses",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgx22ALgBMDTgBYD",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYYmxmZGGYYGGAAAAAAA8AjZZmZGABGbLDsAGwMMBGgN",
				},
				[2] = {
					label = "Horror",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgx22ALgBMDTgBYD",
				},
				[3] = {
					label = "Sikran",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgx22ALgBMDTgBYD",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLDzAjlxMzYz8ADjZ8AMDDAAAAAAAmxsNYA2iBwmZMsADMDb0AYB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYYmxmZGGYYGGAAAAAAA8AjZZmZGABGbLDsAGwMMBGgN",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMjZmNLLLzMAAAAYw0wMDbDzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBYJwYZbgFwAmhJwghN",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				},
			},
			[72] = {
				[0] = {
					label = "All Bosses",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYAzwEYsNsB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYAzwEYsNsB",
				},
				[2] = {
					label = "Horror",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				},
				[3] = {
					label = "Sikran",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYAzwEYsNsB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagZAjhZYWGzMzGMMjxwMMzstNzYmZWYmxMzwMsYbGmZMAAAQYGLbDsAGwMMBGbYD",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAgRDMDYMMDjBmFYYGjZmHYYmZbbMmZmFMzMzMjZYb4BYMzAAAAhZstMwCYAzwEYsNsB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzCMMjxwMMzssNzYmZ2YmZmZGmhNMMzYAAAgwYgNYZxoxMAmFYxYB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmFmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				},
			},
			[73] = {
				[0] = {
					label = "All Bosses",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[2] = {
					label = "Horror",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMLzsMzMz2mZMMNgZmBwyADbMzMMMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNzsB",
				},
			},
		},
	},
	[2] = {
		specs = {
			[65] = {
				[0] = {
					label = "All Bosses",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				[2] = {
					label = "Horror",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mJxMmxMzwAzWGAwAGsBsxMmZGAAAYmZZbptZG2wAYhxYGzA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mJxMmxMzMGY2yAAGAsBsxMmZGAAAYmZZbptZG2wAYhxYGzA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mJxMmxMzMGY2yAAGAsBsxMmZGAAAYmZZbptZG2wAYhxYGzA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mJxMmxMzMGY2yAAGAsBsxMmZGAAAYmZZbptZG2wAYhxYGzA",
				},
			},
			[66] = {
				[0] = {
					label = "All Bosses",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				[2] = {
					label = "Horror",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNMjZ2GLjZmZmZZbmZGGmZMAAADAAAAAAAJzMMMzwYmxWAgxADgZw2AAAAAmZW2WabmxiZwAwgZMM",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLMzMzM2mZmhhZYAAAGAAAAAAASmZ2MMzwYmZ2CAMGAgZw2AAAMz02sMbzAAsZAAMzwwYA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZGDAAwAAAAAAAQamZWMMzwYmxWAAGYAA2GAAAAwMzy2SbzMWMDGAGMDjB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNj5BMzyYZMzMzM2mZmZMYYAAAGAAAAAAASmZYYmhxMs1GAMGYAMD2GAAgZm2mlZbGAgNzgBgZYGGD",
				},
			},
			[70] = {
				[0] = {
					label = "All Bosses",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[2] = {
					label = "Horror",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAiltZmtltZGbmZ22MbDAAAAAAzWaGGmZsNDmthxsMzy2wgZYYZhNAMAAzMtNLz2MAgNgBAjhxMA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAiltZmtltZGbmZ22mZDAAAAAAjmmxMMzMbzgZbYMLzssNMYwwyCbAAAwMTbzysNDAYDYAwYYYG",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				},
			},
		},
	},
	[3] = {
		specs = {
			[253] = {
				[0] = {
					label = "All Bosses",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				[2] = {
					label = "Horror",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				[3] = {
					label = "Sikran",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				[4] = {
					label = "Rashanan",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZmBzMGmxMDzYMzMTmxMmZmZmxMDDjhZGYGzYGsB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYmZbGjZGDmZMMjZGmxMzMzkZYMjZmZMzYGGDzMMmhZZGsB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGbDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				},
			},
			[254] = {
				[0] = {
					label = "All Bosses",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				[2] = {
					label = "Horror",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				[3] = {
					label = "Sikran",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				[4] = {
					label = "Rashanan",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMzMzYYmhhZmZmZmZMzYzMGAAAAAAAYGGzYmZmZmJzYMMzwYYmlZwG",
				},
				[6] = {
					label = "Kyveza",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmxMzMjxMbmBAAAAAAAYGmZGzMzYGNzYMMzwYYGzMsA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMzMzMDmZmhZmxMzMjxMbmBAAAAAAAYGGzMzMzYGNzYMMzADzYmxsA",
				},
			},
			[255] = {
				[0] = {
					label = "All Bosses",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				[2] = {
					label = "Horror",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				[3] = {
					label = "Sikran",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				},
				[6] = {
					label = "Kyveza",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYD",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYD",
				},
				[8] = {
					label = "Ansurek",
					talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				},
			},
		},
	},
	[4] = {
		specs = {
			[259] = {
				[0] = {
					label = "All Bosses",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				[2] = {
					label = "Horror",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZmxM2mBAAAAAgZBWmBAAAAAg22mZmhZGMzMLz2MzMGYYmZGzsZZMDwmZZgBsAWGmADLA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLwyMAAAAAA02yMzMMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLwyMAAAAAA022MzMMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLwyMAAAAAA022MzMMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				},
			},
			[260] = {
				[0] = {
					label = "All Bosses",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[2] = {
					label = "Horror",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGmZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				},
			},
			[261] = {
				[0] = {
					label = "All Bosses",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				[2] = {
					label = "Horror",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				[3] = {
					label = "Sikran",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbZmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				},
			},
		},
	},
	[5] = {
		specs = {
			[256] = {
				[0] = {
					label = "All Bosses",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				[2] = {
					label = "Horror",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				[3] = {
					label = "Sikran",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAADwysxYmZ2GjZmxMbmtZmZmhBAAAAAAAAAAAzilZDbzMDmFGGmxwssMmphYZAzMAQAmtZZBM2sB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGPwMz2YMzwMbmtZmZmBAAAAAAAAAAAYWsMbDbzMDmFGGmxwsw2MNmYZAzMAQAmtZZDM2sB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxmN",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmtZmZmhBAAAAAAAAAAAzilZbYbmZwswYGmxgF2mpxELDYmBACwsNLLgxmN",
				},
			},
			[257] = {
				[0] = {
					label = "All Bosses",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[2] = {
					label = "Horror",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[3] = {
					label = "Sikran",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGLm5BmZYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				},
			},
			[258] = {
				[0] = {
					label = "All Bosses",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				[2] = {
					label = "Horror",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAADz8ADAAAAAAAAAAAAwwsMGzMz2YMzMzsNzMLDmNmZmZMbMAjhZxsN1MDWgBwMbWGmNDAZMWA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMz4BAAAAAAAAAAAAAmxsMYmZWmtZmZGz2MzsMY2YmZmxswAjxwsY2mamBLwYmBACwsNLbgZjF",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMz4BAAAAAAAAAAAAAmxsMYmZWmtZmZGz2MzsMY2YmZmxsxAjxwsY2mamBLwYmBACwsNLLgZjF",
				},
			},
		},
	},
	[6] = {
		specs = {
			[250] = {
				[0] = {
					label = "All Bosses",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				[2] = {
					label = "Horror",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				[3] = {
					label = "Sikran",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghZYGjZMzMjlZMzMTzwwMjZMAAAAAYmZmZmZGzmZmxAAAMMzMzAAAAYgBmxoxyGgtBsBwMYD",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZmZsMjZmZaGGmZYMAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAADMwMGNW2AsNgNAzMYD",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGDzYmZmmZMjZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAGYgZMassBYbAbAMD2A",
				},
			},
			[251] = {
				[0] = {
					label = "All Bosses",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				[2] = {
					label = "Horror",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAYGjZMGDzYmZmZmxMmpZGDjBMzMMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMjxYYGzMzMzMmZmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMjxYsMjZmZmZGzYmYMmxAmZMmxMzMzMzsYGAAAAAAAAAAAgxy2ADYBsMMBGLYGmZGA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAYGjZMmZYGzMzMzMmxMZGDjBMzMMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				},
			},
			[252] = {
				[0] = {
					label = "All Bosses",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
				[2] = {
					label = "Horror",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzYMjxMjlZMjZmGmZmZMjBAAAAAAAAAmZMmxMzMAwsZGmFMzMzDMzMDYxsYYgBmNGasAAzAA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzYMjxMjlZMzMz0wMmZYMAAAAAAAAAwMjZMmZmBAmNzwsMMzMzDYmZMwAzY0YZBw2gNAMzAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzYMjxYsMjZmZmGmZmZMjBAAAAAAAAwwMjZMGzAAsZGmlZMzMzYmZALmFDDMwsxQjFAYGA",
				},
			},
		},
	},
	[7] = {
		specs = {
			[262] = {
				[0] = {
					label = "All Bosses",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				[2] = {
					label = "Horror",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjZGz2sMzMgZmZAAAAAAYzMG2gFYGGasBAmtpZAbLMmGMzMbDLzMzYxsMYZmxghZ2GDA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjZGzysMzMgZmZAAAAAAYzMG2gFYGGasBAmtpZAbMmphZmZ2G2mZmBzyglZGDGmZbMA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYBzMNMzMz2wyMzMYWGmlxMzMzwMbMA",
				},
			},
			[263] = {
				[0] = {
					label = "All Bosses",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				[2] = {
					label = "Horror",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMwyyMzMzwYmZDLzMTWwwYmBAYmZA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMwyyYMzgZmZxYZmZyCLDjZGAgZmB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMwyyMzMzwYmZDLzMTWwwYmBAYmZA",
				},
			},
			[264] = {
				[0] = {
					label = "All Bosses",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				[2] = {
					label = "Horror",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLz2MLGWwCsAzYTjlBwMwGDzCzsMzYmMbLMz0YGmZBLGzYxYYWGDAghB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLz2MLGWwCsAzYTjlBwMwGDWGjtZmZmMbLmZmGzgZBLzMGMGmlxAAYYA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDWGjtZmZmMbLMz0YGmZDLzYGMGmlxAAYYA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMbz2MLGWwCsAzYTjlBwMwGzwCjtZmZmMLLMz0YGMbYZmZGMGmlxAAYYA",
				},
			},
		},
	},
	[8] = {
		specs = {
			[64] = {
				[0] = {
					label = "All Bosses",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
				[2] = {
					label = "Horror",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMmFPAjZGNGzMmBzMMDzMzMzMmZmZmZmZGmBAAAmZ2WWWmZaDAAAAAAAAAAAAAAA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZxDYmxMzihxMjGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMbLLLzMtBAAAAAAAAAAAAAAA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAAMbzCmxDMzsYYegZGNGzMmBzMMDzMzMzMmZmZmZmZGmBAAAmZ2WWWmZaDAAAAAAAAAAAAAAA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGGmFMzYmZxw8AzMaMmHYMDmZYGmZmZmZMzMzMjZmZMzsMTzMLzCAAAsAAAAAAAAAAAAAAAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbsZxDYGPwY28AMPwMjGj5BGzMMzwMMzMzMzYmZmZGzMzYmZZmmZWmFAAAYBAAAAAAAAAAAAAAA",
				},
			},
			[62] = {
				[0] = {
					label = "All Bosses",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				[2] = {
					label = "Horror",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
				[3] = {
					label = "Sikran",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAAmZbWmxMmZmFYMzwYamxAAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMmNPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				},
			},
			[63] = {
				[0] = {
					label = "All Bosses",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				[2] = {
					label = "Horror",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				[3] = {
					label = "Sikran",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGGbWwMzMzs4BYMzw0YMmZAAAAAAMzyMNzsMLAAAgFjZYmxMzMzMLGzMmBmZZGMLMAAAAAAAA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAAmZzixMmZmFPAjZGmGzMGDAAAAAgZWmpZmlZBAAAsYMDzMmZmZmZxYmxMwMLzgZhBAAAAAAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMmNPAjZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmxMzMzMLzYMmhNzsMDmFGAAAAAAAA",
				},
			},
		},
	},
	[9] = {
		specs = {
			[265] = {
				[0] = {
					label = "All Bosses",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				[2] = {
					label = "Horror",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMzMzyMjxmZmZhZmZAAzMWWGYADYG2CMsNDAAAAAAAAMzMbA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWMzMWmZmZxMmZAAzYBGYWMaMDgZBsMDAAAAAAAAMjZD",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAwMjZWMzMWmZmZzMmZAAzYDGYWMaMDgZBsMDAAAAAAAAMjZD",
				},
			},
			[266] = {
				[0] = {
					label = "All Bosses",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				[2] = {
					label = "Horror",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxMWGzsZmZmZMMGmZmZGDzMAAA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzAzMAAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZmx2YmNzMzMjxMzwMmZGwMAAA",
				},
			},
			[267] = {
				[0] = {
					label = "All Bosses",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				[2] = {
					label = "Horror",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGLYAAAAAAAMmZmBAA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjZmZmFzywyMzAAAAADzMLzMzMgxMGWgB2GWoxCGAAAAAAAzYYAA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZZxMDAAAAMzMsMzMzYBGYWMaMDgZDbYAAAAAAAMmZmBAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGLYAAAAAAAMmZmBAA",
				},
			},
		},
	},
	[10] = {
		specs = {
			[268] = {
				[0] = {
					label = "All Bosses",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				[2] = {
					label = "Horror",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgF",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNzgtZmZY2GzM2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsNzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWwImZgZYsxgtZmZYWGzM2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgF",
				},
			},
			[269] = {
				[0] = {
					label = "All Bosses",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[2] = {
					label = "Horror",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[3] = {
					label = "Sikran",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGLLMsNzMDzGzMMLzEAALzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2YmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWYGbzMzwsxMDzyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				},
			},
			[270] = {
				[0] = {
					label = "All Bosses",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				[2] = {
					label = "Horror",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				[3] = {
					label = "Sikran",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAY2sMzyY2MmZmxiBsZGjZz2MzyCDNmZgZYGMYZmZGmtxYYWmJAAAAAAgFLzy2sNzMBAAWA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlttZmlFGamZGYGmhB2mZmhZbMGmFTAAAAAAALWmllZbmZCAAsA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlttZmlFGamZGYGmhB2mZmhZbMGmFTAAAAAAALWmllZbmZCAAsA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlttZmlFGamZGYGmhB2mZmhZbMGmFTAAAAAAALWmllZbmZCAAsA",
				},
			},
		},
	},
	[11] = {
		specs = {
			[102] = {
				[0] = {
					label = "All Bosses",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				[2] = {
					label = "Horror",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCmZGGmZAzMMzMYYbMLmlZWmZWMmZmZmFjxwMjNwCDwAstNWw0MzyAAAAgNzMGA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCzMGGmZAzMMzMYYbmxwMbzYxYmZmZWMmZMzM2AbMAA22GLYamZZAAAAwmZGjBA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCzMzwwMDYmZMzMYYjZxYmtZmNzMzMzMbmlxwMsBWAwYZbmNMmtBwEAAAgFzMGA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALjCmxwwMDYmZMzMYYbMMLzsNjFjZmZmZxYMmZGbgFGgBYbbsgpZmlBAAAAbmZMGA",
				},
			},
			[103] = {
				[0] = {
					label = "All Bosses",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWAzYYYmZ0MjBzMDzY2MDAAAAAAAAAAAANzysMzsNAgFMzMAA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWAzYYYmZ0MjBzMDzY2MDAAAAAAAAAAAANzysMzsNAgFMzMAA",
				},
				[2] = {
					label = "Horror",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWAzYYYmZ0MjBzMDzY2MDAAAAAAAAAAAANzysMzsNAgFMzMAA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWDwMwwMjmZMzYmxYG2YAAAAAAMgBAAAAoZWmlZmtBAsAjZAA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWwwAGzMjmZMzYmZYG2GDAAAAAAAAAAAANzysMzsNAgFYmBA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzMzMb2GsNzMz8AzMAAAAAAbBMjBMzMamxMMzYMjZbmBAAAAAAAAAAAgmZZWmZ2GAwCMzAA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWAzYYYmZ0MjBzMDzY2MDAAAAAAAAAAAANzysMzsNAgFMzMAA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZbWMzCzYmZzmZsNzMjZmBAAAAAYLgZAjxMamxMjZGjZMbjBAAAAAAAYAAAAAAmtZWa2mZZDmZAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMzMamxMjZmhZYbMAAAAAAAADAAAAAwsNzSz2MLbwMDA",
				},
			},
			[104] = {
				[0] = {
					label = "All Bosses",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				[2] = {
					label = "Horror",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZMzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				},
			},
			[105] = {
				[0] = {
					label = "All Bosses",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				[2] = {
					label = "Horror",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMmhRzMgZGmZMMTbzMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzwMzMMTbzMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDGmhhRzMgZmxMjhZabmBAAAAAAAADYZZsgpZmlBAAAwCmZAmB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDGmhhRzMgZmxMjhZabmBAAAAAAAADYZZsgpZmlBAAAwCmZAmB",
				},
			},
		},
	},
	[12] = {
		specs = {
			[577] = {
				[0] = {
					label = "All Bosses",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[2] = {
					label = "Horror",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[3] = {
					label = "Sikran",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				},
			},
			[581] = {
				[0] = {
					label = "All Bosses",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				[2] = {
					label = "Horror",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjhZkZmhZYmZbMYsNDzMjZYGzyMzYmZYGMAAAAALziZMMLMNwMzMjN",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjxMjMzMGDzMbjBjtZMzDMjZYmZMzYbmZYGMAAAAALziZMMbMNwMzMsB",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMzMjxMjMzMGDjZZmBjtZMzDMjZYmZMzYzMjZGMAAAAALziZMMbMNwMzgN",
				},
			},
		},
	},
	[13] = {
		specs = {
			[1473] = {
				[0] = {
					label = "All Bosses",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				[2] = {
					label = "Horror",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				[3] = {
					label = "Sikran",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBAjpGzMzAAAAgZMz2YmZZMzAjtZMYBWGDjtBwMI2wMD",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMz2YmBGbzYwCsMGGbDgZQshZG",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAAAAzMgBjpGzMzAAAAAjZ2GzMLjZGYsNjBLwyYYsNAmBxGmZA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAAAAzMgBjpGzMzAAAAAjZ2GzMLjZGYsNjBLwyYYsNAmBxGmZA",
				},
			},
			[1467] = {
				[0] = {
					label = "All Bosses",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
				[2] = {
					label = "Horror",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYGmBDYwYmGzMTmtx2MzMzYGzsNDYGzsNmZWGzADMGsALjRjtBwMAshB",
				},
				[3] = {
					label = "Sikran",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmBzsZGmBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmBDYwYmmxMTmtZ2mZmZGzYmlZAzYmtxMz2MzADMGsALjRjtBwMAshB",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmBzsZGMgBjZaGzMZ2GbjZmZMjZ2mBMjZ2GzMbzMDMwYwCsMGN2GAzAwGG",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmBzwMmZADGmGzMTmtx2MzMzYGzsNDYGzsNmZWmZGYgxgFYZMasNAmBgNMA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmhZADGz0YmZysNz2MzMzYGzsMDYGzsNmZWGzADMGsALjRjtBwMAshB",
				},
			},
			[1468] = {
				[0] = {
					label = "All Bosses",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[1] = {
					label = "Ulgrax",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[2] = {
					label = "Horror",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[3] = {
					label = "Sikran",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[4] = {
					label = "Rashanan",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[5] = {
					label = "Broodtwister Ovinax",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[6] = {
					label = "Kyveza",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[7] = {
					label = "The Silken Court",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
				[8] = {
					label = "Ansurek",
					talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				},
			},
		},
	},
}
addonTable.TopPlayersRaidDB = talentData