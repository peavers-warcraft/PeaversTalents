local _, addon = ...

local Utils = addon.Utils
local DataManager = addon.DataManager
local TabConfig = addon.TabConfig

local DropdownManager = addon.DropdownManager or {}
addon.DropdownManager = DropdownManager

-- A row's saved selection has to pin down both the boss and the difficulty it came
-- from, so the two are packed into the one build key LocalStorage already stores.
local function EncodeKey(category, bossKey)
	return category .. ":" .. tostring(bossKey)
end

---@return string|nil category, any bossKey
local function DecodeKey(saved)
	if saved == nil then
		return nil, nil
	end
	-- Selections saved before rows gained a difficulty were a bare boss/dungeon ID.
	if type(saved) == "number" then
		return nil, saved
	end

	local category, boss = tostring(saved):match("^(.-):(.+)$")
	if not category then
		return nil, tonumber(saved)
	end
	return category, tonumber(boss) or boss
end

local function GetEntries(selector)
	local classID, specID = Utils.GetPlayerClassAndSpec()
	local category = TabConfig.GetCategory(selector.section, selector.difficultyIndex)
	return DataManager.GetAvailableEntries(selector.source, classID, specID, category)
end

local function FindEntry(entries, key)
	if key == nil then
		return nil
	end
	for _, entry in ipairs(entries) do
		if entry.key == key then
			return entry
		end
	end
	return nil
end

--=============================================================================
-- Rendering
--=============================================================================

-- The dropdown's own initialize function has to be what sets its text.
-- UIDropDownMenu_Initialize calls UIDropDownMenu_ClearAll first, which blanks the
-- text -- so anything we set from outside gets wiped the next time the dropdown is
-- initialized, and the row renders empty until the player clicks it.
-- Why a category is empty, in the dropdown's own width.
--
-- The full sentence goes in the tooltip; a dropdown is far too narrow for it.
-- Mythic+ used to say "Not indexed yet" here because keys genuinely were not
-- indexed; they are, so there is one silence left and one thing to call it. See
-- TabConfig.EmptyMessage.
local function EmptyText()
	return "No builds yet"
end

local function SetBossText(selector, entries)
	if #entries == 0 then
		UIDropDownMenu_SetText(selector.bossDropdown, EmptyText())
		UIDropDownMenu_DisableDropDown(selector.bossDropdown)
		return
	end

	UIDropDownMenu_EnableDropDown(selector.bossDropdown)

	local entry = FindEntry(entries, selector.bossKey)
	if entry then
		UIDropDownMenu_SetText(selector.bossDropdown, entry.data.label or tostring(entry.key))
	else
		selector.bossKey = nil
		UIDropDownMenu_SetText(selector.bossDropdown, "Select...")
	end
end

local function SetDifficultyText(selector)
	if not selector.difficultyDropdown then
		return
	end
	local difficulty = selector.section.difficulties[selector.difficultyIndex]
	UIDropDownMenu_SetText(selector.difficultyDropdown, difficulty.label)
end

---Pushes the selector's state (difficulty + boss) onto its widgets. Never writes to
---storage, so it's safe to call on every refresh, spec change and dropdown open.
function DropdownManager.Render(selector)
	local section = selector.section
	local entries = GetEntries(selector)
	selector.entries = entries

	if selector.newLabel then
		selector.newLabel:Hide()
	end

	local entry = FindEntry(entries, selector.bossKey)

	if entry then
		selector.editBox:SetText(entry.data.talentString or "")
		selector.editBox:SetCursorPosition(0)

		-- Flag a build whose string has changed since the player last looked at it.
		local _, _, _, savedTalentString, savedHasBeenSeen =
			addon.LocalStorage.LoadSelection(selector.source, section.key)
		if selector.newLabel and savedTalentString and entry.data.talentString and
			savedTalentString ~= entry.data.talentString and not savedHasBeenSeen then
			selector.newLabel:Show()
		end
	else
		-- Nothing picked for this spec/difficulty, so don't leave a stale string in
		-- the box where Apply would pick it up.
		selector.editBox:SetText("")
	end

	-- Re-initialize rather than setting the text directly: Initialize is what runs
	-- the init function, and the init function is what owns the text.
	UIDropDownMenu_Initialize(selector.bossDropdown, selector.bossInit)
	if selector.difficultyDropdown then
		UIDropDownMenu_Initialize(selector.difficultyDropdown, selector.difficultyInit)
	end
end

local function SaveAndRender(selector)
	local section = selector.section
	local category = TabConfig.GetCategory(section, selector.difficultyIndex)

	local entries = GetEntries(selector)
	local entry = FindEntry(entries, selector.bossKey)
	if entry then
		addon.LocalStorage.SaveSelection(
			selector.source,
			section.key,
			EncodeKey(category, selector.bossKey),
			entry.data.talentString
		)
	end

	DropdownManager.Render(selector)
	if selector.newLabel then
		selector.newLabel:Hide()
	end
end

--[[
	Which difficulty to open a raid row on, when the player has no saved choice.

	The configured default is Heroic, because that is where most raiders are, and
	that is still the answer whenever Heroic has anything in it.

	It stops being the answer early in a season. Builds are scoped to the
	season's own content, so a difficulty nobody has reached yet is legitimately
	empty -- on release day Heroic and Mythic both were, while Normal had 345
	builds. Opening on the configured default then shows every reader "No builds
	yet" on a spec with plenty one difficulty down, which reads as the addon
	being broken rather than as the tier being new.

	So: the configured default when it has builds, otherwise the hardest
	difficulty that does. Falling back to the configured default keeps the empty
	message naming a sensible difficulty when nothing has any.

	This is deliberately per-spec rather than global. Coverage is uneven early --
	a spec can have Normal builds while another has only LFR -- and the reader
	cares about their own.
]]
local function DefaultDifficultyFor(selector)
	local section = selector.section
	local difficulties = section.difficulties
	if not difficulties then
		return nil
	end

	local classID, specID = Utils.GetPlayerClassAndSpec()
	local function hasBuilds(index)
		local difficulty = difficulties[index]
		if not difficulty then
			return false
		end
		local entries = DataManager.GetAvailableEntries(
			selector.source, classID, specID, difficulty.category)
		return entries ~= nil and #entries > 0
	end

	local preferred = section.defaultDifficulty
	if hasBuilds(preferred) then
		return preferred
	end

	for index = #difficulties, 1, -1 do
		if hasBuilds(index) then
			return index
		end
	end

	return preferred
end

---Restores the row's last selection from storage, then renders it.
function DropdownManager.Restore(selector)
	local section = selector.section
	selector.difficultyIndex = selector.difficultyIndex or DefaultDifficultyFor(selector)

	local _, _, savedBuildKey = addon.LocalStorage.LoadSelection(selector.source, section.key)
	local savedCategory, savedBoss = DecodeKey(savedBuildKey)

	if savedCategory then
		local index = TabConfig.IndexOfCategory(section, savedCategory)
		if index then
			selector.difficultyIndex = index
		end
	end
	selector.bossKey = savedBoss

	DropdownManager.Render(selector)
end

--=============================================================================
-- Dropdown initializers
--=============================================================================

function DropdownManager.InitBossDropdown(selector, level)
	local entries = GetEntries(selector)
	selector.entries = entries

	if #entries == 0 then
		local info = UIDropDownMenu_CreateInfo()
		info.text = TabConfig.EmptyMessage()
		info.disabled = true
		info.notClickable = true
		info.notCheckable = true
		UIDropDownMenu_AddButton(info, level)
		SetBossText(selector, entries)
		return
	end

	for _, entry in ipairs(entries) do
		local info = UIDropDownMenu_CreateInfo()
		info.text = entry.data.label or tostring(entry.key)
		info.value = entry.key
		info.checked = (entry.key == selector.bossKey)
		info.func = function(self)
			selector.bossKey = self.value
			SaveAndRender(selector)
			CloseDropDownMenus()
		end
		UIDropDownMenu_AddButton(info, level)
	end

	SetBossText(selector, entries)
end

function DropdownManager.InitDifficultyDropdown(selector, level)
	local section = selector.section
	if not section.difficulties then
		return
	end

	for index, difficulty in ipairs(section.difficulties) do
		local info = UIDropDownMenu_CreateInfo()
		info.text = difficulty.label
		info.value = index
		info.checked = (index == selector.difficultyIndex)
		info.func = function(self)
			-- The boss stays put; only the difficulty it's read from changes.
			selector.difficultyIndex = self.value
			SaveAndRender(selector)
			CloseDropDownMenus()
		end
		UIDropDownMenu_AddButton(info, level)
	end

	SetDifficultyText(selector)
end

return DropdownManager
