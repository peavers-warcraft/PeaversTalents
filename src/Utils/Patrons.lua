-- PeaversTalents Patrons Module
local addonName, addon = ...

-- Initialize Patrons namespace
local Patrons = {}
addon.Patrons = Patrons

-- Function to initialize patrons support
function Patrons:Initialize()
    -- Ensure PeaversCommons is loaded
    if not _G.PeaversCommons or not _G.PeaversCommons.PatronsUI then
        return false
    end
    
    -- Add patrons display to this addon's settings UI
    _G.PeaversCommons.PatronsUI:AddToSupportPanel(addon)
    
    return true
end

-- Function to access shared patrons list
function Patrons:GetAll()
    if not _G.PeaversCommons or not _G.PeaversCommons.Patrons then
        return {}
    end
    
    return _G.PeaversCommons.Patrons:GetAll()
end

-- Return the module
return Patrons