local _, addon = ...

local ConfigUI = {}
addon.ConfigUI = ConfigUI

local PeaversCommons = _G.PeaversCommons
if not PeaversCommons then
    print("|cffff0000Error:|r PeaversCommons not found.")
    return
end

local W = PeaversCommons.Widgets
local C = W.Colors

function ConfigUI:BuildGeneralPage(parentFrame)
    local y = -10
    local indent = 25

    local _, newY = W:CreateSectionHeader(parentFrame, "How to Use", indent, y)
    y = newY - 8

    local infoText = parentFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    infoText:SetPoint("TOPLEFT", indent, y)
    infoText:SetPoint("TOPRIGHT", -indent, y)
    infoText:SetJustifyH("LEFT")
    infoText:SetSpacing(2)
    infoText:SetTextColor(C.textSec[1], C.textSec[2], C.textSec[3])
    infoText:SetText(
        "This addon adds a 'Builds' button to your talent UI that allows you to import talent builds from wowcompare.io.\n\n" ..
        "1. Open your talent UI (press 'N' by default)\n" ..
        "2. Click the 'Builds' button next to the search box\n" ..
        "3. Switch between sources using the tabs at the bottom\n" ..
        "4. Select a specific build from the dropdown\n" ..
        "5. Click 'Import' to apply the build to your character"
    )

    local textHeight = infoText:GetStringHeight() + 20
    y = y - textHeight

    local hint = W:CreateLabel(parentFrame, "Use |cff" .. string.format("%02x%02x%02x",
        C.accent[1] * 255, C.accent[2] * 255, C.accent[3] * 255) .. "/pt|r to open the talent builds dialog.", { color = C.textMuted })
    hint:SetPoint("TOPLEFT", indent, y)
    y = y - 30

    local openBtn = W:CreateButton(parentFrame, "Open Talents Dialog", {
        style = "primary",
        width = 160,
        onClick = function()
            addon.ShowExportDialog()
        end,
    })
    openBtn:SetPoint("TOPLEFT", indent, y)
    y = y - 40

    parentFrame:SetHeight(math.abs(y) + 30)
end

function ConfigUI:BuildInfoPage(parentFrame)
    PeaversCommons.ConfigUIUtils.BuildInfoPage(parentFrame, "Talents", {
        "Puts optimized talent builds from wowcompare.io directly in your talent " ..
            "window - general builds plus boss-specific recommendations for " ..
            "raids and dungeons, updated daily.",
        { command = "/pt", desc = "open the configuration panel" },

        { header = "Applying a build" },
        "Open your talent window and click the Peavers Builds button. Pick a " ..
            "general or encounter-specific build, then choose Apply Loadout " ..
            "from the arrow menu - no copy and paste needed.",
        "Applying creates a saved loadout named after the build and switches " ..
            "you to it. The same slot is reused every time, so applying builds " ..
            "never fills up your loadout list.",
        "Prefer the string? The arrow menu also offers Copy Import String.",

        { header = "Where the data comes from" },
        "Builds ship in the PeaversTalentsData companion addon, which is " ..
            "updated daily from wowcompare.io's rankings - no manual imports needed.",
    })
end

function ConfigUI:GetPages()
    return {
        { key = "info", label = "Information", builder = function(f) ConfigUI:BuildInfoPage(f) end },
        { key = "general", label = "General", builder = function(f) ConfigUI:BuildGeneralPage(f) end },
    }
end

function ConfigUI:BuildIntoFrame(parentFrame)
    self:BuildGeneralPage(parentFrame)
    return parentFrame
end

function ConfigUI:Initialize()
end

return ConfigUI
