local _, addon = ...
local Utils = addon.Utils
local UIComponents = addon.UIComponents or {}
addon.UIComponents = UIComponents

-- Access PeaversCommons utilities
local PeaversCommons = _G.PeaversCommons
local FrameUtils = PeaversCommons.FrameUtils

function UIComponents.CreateTabContent(dialog)
	return FrameUtils.CreateTabContent(dialog)
end

function UIComponents.CreateTitleBackground(dialog)
	return FrameUtils.CreateTitleBackground(dialog, addon.Config.DIALOG.TITLE_HEIGHT)
end

function UIComponents.CreateCloseButton(dialog)
	return FrameUtils.CreateCloseButton(dialog)
end

return UIComponents
