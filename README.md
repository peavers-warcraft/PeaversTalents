# PeaversTalents

[![AddonSentry](https://addonsentry.io/api/public/repos/peavers-warcraft/PeaversTalents/badge.svg)](https://addonsentry.io/dashboard/peavers-warcraft/PeaversTalents)

A World of Warcraft addon that puts real, logged talent builds in your talent window, sourced from [parses.gg](https://parses.gg).

## Features

<!-- peavers:features -->
- Builds taken from real logged pulls, not assembled pick by pick
- Boss-specific builds, or the whole difficulty at once
- One-click apply: load any build straight into a talent loadout, no copy/paste
- Pick a boss and difficulty from a single row -- LFR through Mythic
- Import strings still available if you'd rather copy them yourself
<!-- /peavers:features -->

## Usage

<!-- peavers:usage -->
1. Open your in-game talent window
2. Click the "Peavers Builds" button
3. Select from general or encounter-specific builds
4. Click the arrow next to the build and choose **Apply Loadout**

Applying creates a saved loadout named after the build and switches you to it. The
same slot is reused each time, so applying builds never fills up your loadout list.
Prefer to copy the string yourself? The arrow menu also has **Copy Import String**.
<!-- /peavers:usage -->

## Where the builds come from

[parses.gg](https://parses.gg), and nothing else. Archon and Wowhead were both
retired as sources -- Archon at their request that we stop using their data.

Every build is a loadout somebody actually ran on that fight. That matters: a
"consensus" build assembled by taking the most popular pick at each node
independently can spend more points than the game allows, and is a build nobody
played. These are whole loadouts, counted as loadouts.

The pool is smaller than it used to be, and the addon tells you when it has
nothing rather than pretending otherwise. A spec with no logged pulls at a
difficulty shows **No builds yet**; coverage fills in as people log fights.

**Mythic+ is keystone bands, not keystone levels.** parses.gg pools keys into
bands, so a build is what people ran across a band rather than at one exact
level, and a dungeon is data on the row the same way a raid is.

## Configuration

<!-- peavers:configuration -->
No configuration required. Talent builds are automatically updated daily.
<!-- /peavers:configuration -->


## Installation

PeaversTalents is released exclusively through [addons.peavers.io](https://addons.peavers.io) and is no longer published to CurseForge.

### Recommended: PeaversUpdater

Download and install [PeaversUpdater](https://github.com/peavers-warcraft/PeaversUpdater/releases/latest), the desktop updater for the whole Peavers collection. It installs PeaversTalents together with its required dependencies and keeps everything up to date automatically.

### Alternative: manual install

1. Download the latest zip from [Releases](https://github.com/peavers-warcraft/PeaversTalents/releases/latest)
2. Extract it into `World of Warcraft/_retail_/Interface/AddOns/`
3. Ensure [PeaversCommons](https://github.com/peavers-warcraft/PeaversCommons) is also installed
4. Ensure [PeaversConfig](https://github.com/peavers-warcraft/PeaversConfig) is also installed
5. Enable the addon on the character selection screen

---

*Part of the [Peavers](https://peavers.io) addon collection · [Report an issue](https://github.com/peavers-warcraft/PeaversTalents/issues) · [Support development on Patreon](https://www.patreon.com/Peavers)*
