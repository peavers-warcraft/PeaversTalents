local addonName, addon = ...

local ADDON_NAME = "PeaversTalents"
local ADDON_ID = "PeaversTalents"
local ICON_PATH = "Interface\\AddOns\\PeaversTalents\\src\\Media\\Icon"

-- Initialize SupportUI namespace
local SupportUI = {}
addon.SupportUI = SupportUI

-- Constants
local ICON_ALPHA = 0.1

-- Creates and initializes the support options panel
function SupportUI:InitializeOptions()
    local panel = CreateFrame("Frame")
    panel.name = "Support"

    -- Add background image
    local largeIcon = panel:CreateTexture(nil, "BACKGROUND")
    largeIcon:SetTexture(ICON_PATH)
    largeIcon:SetPoint("TOPLEFT", panel, "TOPLEFT", 0, 0)
    largeIcon:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", 0, 0)
    largeIcon:SetAlpha(ICON_ALPHA)

    -- Create header and description
    local titleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    titleText:SetPoint("TOPLEFT", 16, -16)
    titleText:SetText("Support " .. ADDON_NAME)

    -- Get addon version
    local version = C_AddOns.GetAddOnMetadata(ADDON_ID, "Version") or "Unknown"
    local versionText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    versionText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
    versionText:SetText("Version: " .. version)

    -- Support information
    local supportInfo = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    supportInfo:SetPoint("TOPLEFT", 16, -70)
    supportInfo:SetPoint("TOPRIGHT", -16, -70)
    supportInfo:SetJustifyH("LEFT")
    supportInfo:SetText("If you enjoy " .. ADDON_NAME .. " and would like to support its development, or if you need help or want to request new features, stop by the website.")
    supportInfo:SetSpacing(2)

    -- Website URL as text
    local websiteLabel = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    websiteLabel:SetPoint("TOPLEFT", 16, -120)
    websiteLabel:SetText("Website:")

    local websiteURL = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    websiteURL:SetPoint("TOPLEFT", websiteLabel, "TOPLEFT", 70, 0)
    websiteURL:SetText("https://peavers.io")
    websiteURL:SetTextColor(0.3, 0.6, 1.0)

    -- Additional info at bottom
    local additionalInfo = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    additionalInfo:SetPoint("BOTTOMRIGHT", -16, 16)
    additionalInfo:SetJustifyH("RIGHT")
    additionalInfo:SetText("Thank you for using Peavers Addons!")

    -- Register with the Interface Options
    local supportCategory = Settings.RegisterCanvasLayoutSubcategory(addon.mainCategory, panel, panel.name)
    addon.supportCategory = supportCategory
    addon.supportCategory.ID = panel.name

    -- Required callbacks
    panel.OnRefresh = function()
    end
    panel.OnCommit = function()
    end
    panel.OnDefault = function()
    end

    return panel
end

function SupportUI:Initialize()
    self:InitializeOptions()
end
