-- PeaversTalents Patrons Module
local addonName, addon = ...

-- Initialize Patrons namespace
local Patrons = {}
addon.Patrons = Patrons

-- Function to initialize patrons support
function Patrons:Initialize()
    -- Ensure PeaversCommons is loaded
    if not _G.PeaversCommons or not _G.PeaversCommons.Patrons then
        return false
    end
    
    -- If directPanel exists but supportPanel doesn't, use directPanel
    if not addon.supportPanel and addon.directPanel then
        addon.supportPanel = addon.directPanel
    end
    
    -- Add patrons display to this addon's support UI
    if addon.supportPanel and _G.PeaversCommons.PatronsUI then
        _G.PeaversCommons.PatronsUI:AddToSupportPanel(addon)
    else
        -- Try again after a delay
        C_Timer.After(2, function()
            if not addon.supportPanel and addon.directPanel then
                addon.supportPanel = addon.directPanel
            end
            
            if addon.supportPanel and _G.PeaversCommons.PatronsUI then
                _G.PeaversCommons.PatronsUI:AddToSupportPanel(addon)
            end
        end)
    end
    
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