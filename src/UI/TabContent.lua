local _, addon = ...
local Utils = addon.Utils
local TabConfig = addon.TabConfig
local TabContent = addon.TabContent or {}
addon.TabContent = TabContent

local BOSS_DROPDOWN_WIDTH = 150
local DIFFICULTY_DROPDOWN_WIDTH = 80
local ARROW_SIZE = 22

-- Vertical layout. Rows sit at fixed offsets from the top of the tab, so a row's
-- height can't be thrown off by the widgets the row above it happens to contain.
local FIRST_SECTION_Y = 12   -- gap below the tab's top edge
local LABEL_HEIGHT = 22      -- section name, down to the top of its dropdown row
local ROW_HEIGHT = 32        -- the dropdown / edit box line itself
local SECTION_GAP = 20       -- breathing room before the next section name
local SECTION_HEIGHT = LABEL_HEIGHT + ROW_HEIGHT + SECTION_GAP

-- Horizontal layout. Every row's string box starts and ends at the same column,
-- whether or not the row has a difficulty dropdown -- a Mythic+ row leaves the
-- difficulty slot empty rather than sliding its box left.
--
-- The dropdown column is measured, not calculated: UIDropDownMenuTemplate wraps the
-- width you ask for in an unknown amount of chrome, and guessing at it put the raid
-- rows' difficulty dropdown on top of the left end of their string box.
local DROPDOWN_INSET = 16    -- invisible left padding baked into UIDropDownMenuTemplate
local DROPDOWN_OVERLAP = -10 -- difficulty tucks into the boss dropdown's right inset
local EDITBOX_GAP = 10       -- dropdown stack -> string box
local ARROW_GAP = 6          -- string box -> apply arrow

-- Config is loaded before this file, so these resolve once at load.
local SIDE = addon.Config.DIALOG.PADDING.SIDE
local DIALOG_WIDTH = addon.Config.DIALOG.WIDTH

-- The row is inset by the same margin on both sides: the dropdown's left edge and the
-- apply arrow's right edge each sit SIDE from the dialog. Deriving the right margin
-- from the left one keeps them matched if either is ever retuned.
local BOSS_X = SIDE - DROPDOWN_INSET
local EDITBOX_RIGHT = DIALOG_WIDTH - SIDE - ARROW_SIZE - ARROW_GAP

function TabContent.CreateEditBox(parent, name, width)
	local editBox = CreateFrame("EditBox", name, parent, "InputBoxTemplate")
	editBox:SetSize(width, 32)
	editBox:SetAutoFocus(false)
	editBox:SetFontObject(ChatFontNormal)
	editBox:EnableMouse(true)
	return editBox
end

-- Small down-arrow opening the per-build action menu ("Apply", "Copy"). Stays
-- disabled until a build is picked, since every action needs a string.
function TabContent.CreateApplyArrow(parent, name, editBox, getBuildLabel)
	local button = CreateFrame("Button", name, parent)
	button:SetSize(ARROW_SIZE, ARROW_SIZE)
	button:SetPoint("LEFT", editBox, "RIGHT", 6, -1)
	button.editBox = editBox

	button:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Up")
	button:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Down")
	button:SetDisabledTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Disabled")
	button:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")

	local function GetTalentString()
		local text = editBox:GetText()
		if text and text:trim() ~= "" then
			return text:trim()
		end
		return nil
	end

	button:SetScript("OnClick", function(self)
		local talentString = GetTalentString()
		if not talentString then return end
		addon.ApplyMenu.Toggle(self, talentString, getBuildLabel and getBuildLabel() or nil)
	end)

	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText("Build actions", 1, 1, 1)
		if self:IsEnabled() then
			GameTooltip:AddLine("Apply this loadout in one click, or copy the import string.", nil, nil, nil, true)
		else
			GameTooltip:AddLine("Select a build first.", 1, 0.4, 0.4, true)
		end
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", GameTooltip_Hide)

	-- The box is the only place a talent string ever lands, whether from a dropdown
	-- pick or a manual paste, so track it rather than the dropdown.
	function button:Sync()
		self:SetEnabled(GetTalentString() ~= nil)
	end

	editBox:HookScript("OnTextChanged", function() button:Sync() end)
	button:Sync()

	return button
end

---Builds one row: a boss/dungeon dropdown, an optional difficulty dropdown, the
---import string, and the apply arrow.
---
---Rows are pinned to the tab at an explicit Y rather than chained off the previous
---row. Chaining made every row inherit the last one's X, so a row with a difficulty
---dropdown shunted the next row's label rightwards and walked the whole column off
---the edge of the dialog.
---@param y number Offset from the top of the tab for this row.
---@return number nextY
local function CreateSection(dialog, tab, tabInfo, section, y)
	local prefix = TabConfig.GetPrefix(tabInfo, section)
	local frameName = "TalentExportDialog_" .. tabInfo.source .. section.key

	local label = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2")
	label:SetPoint("TOPLEFT", tab, "TOPLEFT", SIDE, y)
	label:SetText(section.name)

	local rowY = y - LABEL_HEIGHT

	local bossDropdown = CreateFrame("Frame", frameName .. "Boss", tab, "UIDropDownMenuTemplate")
	bossDropdown:SetPoint("TOPLEFT", tab, "TOPLEFT", BOSS_X, rowY)
	UIDropDownMenu_SetWidth(bossDropdown, BOSS_DROPDOWN_WIDTH)

	local selector = {
		tab = tabInfo,
		section = section,
		source = tabInfo.source,
		bossDropdown = bossDropdown,
		difficultyIndex = section.defaultDifficulty,
	}

	-- Built on every row, then hidden where the content has no difficulty axis. A
	-- hidden frame still occupies its slot, so the string box can anchor to it and
	-- land in the same column on every row without anyone guessing at chrome widths.
	local difficultyDropdown = CreateFrame("Frame", frameName .. "Difficulty", tab, "UIDropDownMenuTemplate")
	difficultyDropdown:SetPoint("LEFT", bossDropdown, "RIGHT", DROPDOWN_OVERLAP, 0)
	UIDropDownMenu_SetWidth(difficultyDropdown, DIFFICULTY_DROPDOWN_WIDTH)
	if section.difficulties then
		selector.difficultyDropdown = difficultyDropdown
	else
		difficultyDropdown:Hide()
	end

	-- Both dropdowns now have their real widths, so the string box can be sized to
	-- exactly fill the gap between them and the apply arrow.
	local editBoxLeft = BOSS_X + bossDropdown:GetWidth() + DROPDOWN_OVERLAP
		+ difficultyDropdown:GetWidth() + EDITBOX_GAP
	local editBox = TabContent.CreateEditBox(tab, frameName .. "Edit", EDITBOX_RIGHT - editBoxLeft)
	editBox:SetPoint("TOPLEFT", tab, "TOPLEFT", editBoxLeft, rowY + 2)
	selector.editBox = editBox

	local newLabel = tab:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	newLabel:SetText("|cFF00FF00New!|r")
	newLabel:SetPoint("BOTTOMLEFT", editBox, "TOPLEFT", 0, 4)
	newLabel:SetFont(newLabel:GetFont(), 12, "OUTLINE")
	newLabel:Hide()
	selector.newLabel = newLabel

	editBox:SetScript("OnEditFocusGained", function()
		newLabel:Hide()
		addon.LocalStorage.MarkAsSeen(tabInfo.source, section.key)
	end)

	selector.applyArrow = TabContent.CreateApplyArrow(tab, frameName .. "Apply", editBox, function()
		local selected = UIDropDownMenu_GetText(bossDropdown)
		if not selected or selected == "Select..." or selected == "No data found" then
			return nil
		end
		-- Tag the loadout with its difficulty, abbreviated: the spelled-out word pushes
		-- longer boss names past the game's 31-character loadout name limit.
		if section.difficulties then
			local difficulty = section.difficulties[selector.difficultyIndex]
			return selected .. " (" .. difficulty.label:sub(1, 1) .. ")"
		end
		return selected
	end)

	-- Kept on the selector so Render can re-initialize the dropdowns. Initialize is
	-- what runs these, and these are what set the dropdown text.
	selector.bossInit = function(_, level)
		addon.DropdownManager.InitBossDropdown(selector, level)
	end
	UIDropDownMenu_Initialize(bossDropdown, selector.bossInit)

	if selector.difficultyDropdown then
		selector.difficultyInit = function(_, level)
			addon.DropdownManager.InitDifficultyDropdown(selector, level)
		end
		UIDropDownMenu_Initialize(selector.difficultyDropdown, selector.difficultyInit)
	end

	dialog.selectors[prefix] = selector
	Utils.Debug("Created section", prefix)

	return y - SECTION_HEIGHT
end

local function CreateSourceTab(dialog, tab, tabInfo)
	if addon.Config.MAINTENANCE_MODE then
		local messageText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		messageText:SetPoint("CENTER", tab, "CENTER", 0, 20)
		messageText:SetText(addon.Config.MAINTENANCE_MESSAGE)
		messageText:SetJustifyH("CENTER")
		messageText:SetWidth(addon.Config.DIALOG.WIDTH - 60)
		return
	end

	local y = -FIRST_SECTION_Y
	for _, section in ipairs(tabInfo.sections) do
		y = CreateSection(dialog, tab, tabInfo, section, y)
	end

	local instructionsText = tab:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	instructionsText:SetPoint("BOTTOM", tab, "BOTTOM", 0, 55)
	instructionsText:SetText("Updated " .. Utils.GetFormattedUpdate(tabInfo.source))
	instructionsText:SetJustifyH("CENTER")
end

function TabContent.CreateTab(dialog, tab, tabInfo)
	CreateSourceTab(dialog, tab, tabInfo)
end

return TabContent
