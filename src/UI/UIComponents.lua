local _, addon = ...
local Utils = addon.Utils
local UIComponents = addon.UIComponents or {}
addon.UIComponents = UIComponents

-- Access PeaversCommons utilities
local PeaversCommons = _G.PeaversCommons
local FrameUtils = PeaversCommons.FrameUtils

function UIComponents.CreateTab(dialog, id, text)
	local tabPrefix = "TalentExportDialogTab"
	return FrameUtils.CreateTab(dialog, id, text, tabPrefix)
end

function UIComponents.CreateTabContent(dialog)
	return FrameUtils.CreateTabContent(dialog)
end

function UIComponents.CreateTitleBackground(dialog)
	return FrameUtils.CreateTitleBackground(dialog, addon.Config.DIALOG.TITLE_HEIGHT)
end

function UIComponents.CreateCloseButton(dialog)
	return FrameUtils.CreateCloseButton(dialog)
end

-- Add more UI component creation functions as needed
function UIComponents.CreateSectionHeader(parent, text, x, y)
	return FrameUtils.CreateSectionHeader(parent, text, x, y)
end

function UIComponents.CreateLabel(parent, text, x, y, fontObject)
	return FrameUtils.CreateLabel(parent, text, x, y, fontObject)
end

function UIComponents.CreateButton(parent, name, text, x, y, width, height, onClick)
	return FrameUtils.CreateButton(parent, name, text, x, y, width, height, onClick)
end

function UIComponents.CreateCheckbox(parent, name, text, x, y, initialValue, textColor, onClick)
	return FrameUtils.CreateCheckbox(parent, name, text, x, y, initialValue, textColor, onClick)
end

function UIComponents.CreateDropdown(parent, name, x, y, width, initialText)
	return FrameUtils.CreateDropdown(parent, name, x, y, width, initialText)
end

function UIComponents.CreateSeparator(parent, x, y, width)
	return FrameUtils.CreateSeparator(parent, x, y, width)
end

function UIComponents.CreateScrollFrame(parent)
	return FrameUtils.CreateScrollFrame(parent)
end

function UIComponents.AddTooltip(frame, title, text)
	return FrameUtils.AddTooltip(frame, title, text)
end

return UIComponents
