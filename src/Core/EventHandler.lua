local _, addon = ...
local Utils = addon.Utils
local EventHandler = addon.EventHandler or {}
addon.EventHandler = EventHandler

local talentFrame
local isTWW = select(4, GetBuildInfo()) >= 110000
local talentUI = isTWW and "Blizzard_PlayerSpells" or "Blizzard_ClassTalentUI"

function EventHandler.Initialize()
	local eventFrame = CreateFrame("Frame")
	eventFrame:RegisterEvent("ADDON_LOADED")
	eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	eventFrame:SetScript("OnEvent", EventHandler.OnEvent)
end

function EventHandler.OnEvent(self, event, arg1)
	if event == "ADDON_LOADED" then
		if arg1 == talentUI then
			Utils.Debug("Talent UI loaded")
			talentFrame = isTWW and PlayerSpellsFrame.TalentsFrame or ClassTalentFrame.TalentsTab
			EventHandler.CreateExportButton()
		end
	elseif event == "PLAYER_ENTERING_WORLD" then
		Utils.Debug("Player entering world")
		if not C_AddOns.IsAddOnLoaded(talentUI) then
			UIParentLoadAddOn(talentUI)
		end
	end
end

function EventHandler.CreateExportButton()
	local exportButton = CreateFrame("Button", "TalentExportButton", talentFrame, "UIPanelButtonTemplate")
	exportButton:SetSize(addon.Config.DIALOG.IMPORT_BUTTON.WIDTH, addon.Config.DIALOG.IMPORT_BUTTON.HEIGHT)
	exportButton:SetText("Builds")
	exportButton:SetPoint("LEFT", talentFrame.SearchBox, "RIGHT", 10, 0)
	exportButton:SetScript("OnClick", addon.ShowExportDialog)
	Utils.Debug("Export button created")
end

return EventHandler
