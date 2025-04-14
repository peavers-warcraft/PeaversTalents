local _, addon = ...

-- Initialize ConfigUI namespace
local ConfigUI = {}
addon.ConfigUI = ConfigUI

-- Creates and initializes the options panel
function ConfigUI:InitializeOptions()
	-- Create the main panel for the addon
	local panel = CreateFrame("Frame")
	panel.name = "PeaversTalents"

	panel.layoutIndex = 1  -- Ensures proper ordering
	panel.OnShow = function(self)
		-- Any code to execute when the panel is shown
		return true  -- Signal that the panel was properly displayed
	end

    local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", 10, -10)
    scrollFrame:SetPoint("BOTTOMRIGHT", -30, 10)

    local content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(scrollFrame:GetWidth(), 500)  -- Initial height, will be adjusted
    scrollFrame:SetScrollChild(content)

    local yPos = 0

    -- Create header and description
    local title = content:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 25, yPos)
    title:SetText("Peavers Talents")
    title:SetTextColor(1, 0.84, 0)  -- Gold color for main title
    title:SetFont(title:GetFont(), 24, "OUTLINE")
    yPos = yPos - 40

    local subtitle = content:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    subtitle:SetPoint("TOPLEFT", 25, yPos)
    subtitle:SetText("Pick the latest talent builds from wowcompare.io, most-popular, and community")
    subtitle:SetFont(subtitle:GetFont(), 14)
    yPos = yPos - 30

    -- Add separator
    local separator = content:CreateTexture(nil, "ARTWORK")
    separator:SetHeight(1)
    separator:SetPoint("TOPLEFT", 25, yPos)
    separator:SetPoint("TOPRIGHT", -25, yPos)
    separator:SetColorTexture(0.3, 0.3, 0.3, 0.9)
    yPos = yPos - 25

    -- Usage information
    local usageInfo = content:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    usageInfo:SetPoint("TOPLEFT", 25, yPos)
    usageInfo:SetPoint("TOPRIGHT", -25, yPos)
    usageInfo:SetJustifyH("LEFT")
    usageInfo:SetText("This addon adds a 'Builds' button to your talent UI that allows you to import talent builds from popular sources.")
    usageInfo:SetSpacing(2)
    yPos = yPos - 40

    -- How to use section
    local howToUseHeader = content:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    howToUseHeader:SetPoint("TOPLEFT", 25, yPos)
    howToUseHeader:SetText("How to Use:")
    yPos = yPos - 25

    -- List of steps
    local steps = {
        "Open your talent UI (press 'N' by default)",
        "Click the 'Builds' button next to the search box",
        "Select a source (wowcompare.io, most-popular, community, or worldwide)",
        "Choose a build category (Mythic, Raid, etc.)",
        "Select a specific build from the dropdown",
        "Click 'Import' to apply the build to your character"
    }

    for _, step in ipairs(steps) do
        local stepText = content:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        stepText:SetPoint("TOPLEFT", 45, yPos)
        stepText:SetPoint("TOPRIGHT", -25, yPos)
        stepText:SetJustifyH("LEFT")
        stepText:SetText("• " .. step)
        yPos = yPos - 20
    end

    -- Features section
    yPos = yPos - 20
    local featuresHeader = content:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    featuresHeader:SetPoint("TOPLEFT", 25, yPos)
    featuresHeader:SetText("Features:")
    yPos = yPos - 25

    -- List of features
    local features = {
        "Import talent builds from multiple sources",
        "Automatically updates with the latest builds",
        "Works with all classes and specializations",
        "Remembers your last selected build",
        "Simple and intuitive interface"
    }

    for _, feature in ipairs(features) do
        local featureText = content:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        featureText:SetPoint("TOPLEFT", 45, yPos)
        featureText:SetPoint("TOPRIGHT", -25, yPos)
        featureText:SetJustifyH("LEFT")
        featureText:SetText("• " .. feature)
        yPos = yPos - 20
    end

    -- Update content height based on the last element position
    content:SetHeight(math.abs(yPos) + 50)

	-- Register with the Interface Options - updated to match your working pattern
	addon.mainCategory = Settings.RegisterCanvasLayoutCategory(panel, panel.name)
	addon.mainCategory.ID = panel.name
	Settings.RegisterAddOnCategory(addon.mainCategory)

	-- Add these callback functions
	panel.OnRefresh = function() end
	panel.OnCommit = function() end
	panel.OnDefault = function() end

	return panel
end

-- Initialize the configuration UI when called
function ConfigUI:Initialize()
    self:InitializeOptions()
end
