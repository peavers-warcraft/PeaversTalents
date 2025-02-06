local _, addon = ...
local Utils = addon.Utils
local UIComponents = addon.UIComponents or {}
addon.UIComponents = UIComponents

function UIComponents.CreateTab(dialog, id, text)
	local tabName = "TalentExportDialogTab" .. id
	local tab = CreateFrame("Button", tabName, dialog, "PanelTabButtonTemplate")
	tab:SetText(text)
	tab:SetID(id)

	if id == 1 then
		tab:SetPoint("BOTTOMLEFT", dialog, "BOTTOMLEFT", 5, -30)
	else
		tab:SetPoint("LEFT", dialog.Tabs[id - 1], "RIGHT", -16, 0)
	end

	tab:SetScript("OnClick", function()
		PanelTemplates_SetTab(dialog, id)
		for _, content in pairs(dialog.TabContents) do
			content:Hide()
		end
		dialog.TabContents[id]:Show()
	end)

	return tab
end

function UIComponents.CreateTabContent(dialog)
	local content = CreateFrame("Frame", nil, dialog)
	content:SetPoint("TOPLEFT", dialog, "TOPLEFT", 0, -25)
	content:SetPoint("BOTTOMRIGHT", dialog, "BOTTOMRIGHT", 0, -30)
	content:Hide()
	return content
end

function UIComponents.CreateTitleBackground(dialog)
	local titleBg = CreateFrame("Frame", nil, dialog)
	titleBg:SetPoint("TOPLEFT", 0, 0)
	titleBg:SetPoint("TOPRIGHT", 0, 0)
	titleBg:SetHeight(addon.Config.DIALOG.TITLE_HEIGHT)
	titleBg:SetFrameLevel(dialog:GetFrameLevel() + 1)
	return titleBg
end

function UIComponents.CreateCloseButton(dialog)
	local closeButton = CreateFrame("Button", nil, dialog, "UIPanelCloseButtonNoScripts")
	closeButton:SetPoint("TOPRIGHT", dialog, "TOPRIGHT", 0, 0)
	closeButton:SetFrameStrata("DIALOG")
	closeButton:SetFrameLevel(dialog:GetFrameLevel() + 1000)
	closeButton:Raise()
	closeButton:SetScript("OnClick", function()
		dialog:Hide()
	end)
	return closeButton
end

return UIComponents
