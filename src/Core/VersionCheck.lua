local addonName, addon = ...
local Utils = addon.Utils
local VersionCheck = {}
addon.VersionCheck = VersionCheck

-- Version information
VersionCheck.CURRENT_VERSION = C_AddOns.GetAddOnMetadata(addonName, "Version")
local VERSION_CHECK_PREFIX = "PT_VERSION"

-- Store seen versions to prevent spam
local seenVersions = {}
local lastNotification = 0
local NOTIFICATION_COOLDOWN = 3600 -- One hour cooldown between notifications

-- Register a chat filter function to catch "You are not in a party" messages
local function installChatFilter()
    local filterPatterns = {
        "You aren't in a party",
        "You aren't in a raid",
        "You aren't in a guild",
        "No player named",
        ERR_NOT_IN_PARTY,
        ERR_NOT_IN_GROUP,
        ERR_NOT_IN_RAID,
        ERR_NOT_IN_GUILD
    }

    ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", function(_, _, message)
        for _, pattern in ipairs(filterPatterns) do
            if message:find(pattern) then
                -- Return true to block the message from displaying
                return true
            end
        end

        -- Return false to allow the message to display
        return false
    end)

    Utils.Debug("Chat filter installed to suppress party/raid/guild messages")
end

local function compareVersions(v1, v2)
	local v1_major, v1_minor, v1_patch = string.match(v1, "(%d+)%.(%d+)%.(%d+)")
	local v2_major, v2_minor, v2_patch = string.match(v2, "(%d+)%.(%d+)%.(%d+)")

	v1_major, v1_minor, v1_patch = tonumber(v1_major), tonumber(v1_minor), tonumber(v1_patch)
	v2_major, v2_minor, v2_patch = tonumber(v2_major), tonumber(v2_minor), tonumber(v2_patch)

	if v1_major > v2_major then
		return 1
	elseif v1_major < v2_major then
		return -1
	elseif v1_minor > v2_minor then
		return 1
	elseif v1_minor < v2_minor then
		return -1
	elseif v1_patch > v2_patch then
		return 1
	elseif v1_patch < v2_patch then
		return -1
	else
		return 0
	end
end

local function showUpdateDialog(newVersion)
	-- Check if we've shown this version recently
	if seenVersions[newVersion] then return end

	-- Check cooldown
	local currentTime = GetTime()
	if currentTime - lastNotification < NOTIFICATION_COOLDOWN then return end

	-- Create and show the dialog
	StaticPopupDialogs["PEAVERSTALENT_UPDATE_DIALOG"] = {
		text = string.format(
			"A new version of PeaversTalents (v%s) is available! You're running v%s. Please update to get the latest talent builds!",
			newVersion, VersionCheck.CURRENT_VERSION),
		button1 = "Ok",
		button2 = "Don't remind me",
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
		OnAccept = function()
			-- Use CurseForge URL from TOC metadata if available
			local curseID = C_AddOns.GetAddOnMetadata(addonName, "X-Curse-Project-ID")
			if curseID then
				Utils.Print(string.format("Download the latest version at: https://www.curseforge.com/wow/addons/%s",
					curseID))
			end
		end,
		OnCancel = function()
			seenVersions[newVersion] = true
		end,
	}

	StaticPopup_Show("PEAVERSTALENT_UPDATE_DIALOG")
	lastNotification = currentTime
end

function VersionCheck:Initialize()
	C_ChatInfo.RegisterAddonMessagePrefix(VERSION_CHECK_PREFIX)
	installChatFilter()  -- Install chat filter
	Utils.Debug("Version check initialized")
end

function VersionCheck:HandleAddonMessage(prefix, message, channel, sender)
	if prefix == VERSION_CHECK_PREFIX then
		-- Don't process our own messages
		if sender == UnitName("player") then return end

		-- Compare versions
		if compareVersions(message, self.CURRENT_VERSION) > 0 then
			showUpdateDialog(message)
		end
	end
end

function VersionCheck:BroadcastVersion()
    Utils.Debug("Broadcasting version: " .. self.CURRENT_VERSION)

    if IsInGuild() then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "GUILD")
    end

    if IsInRaid() then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "RAID")
    elseif IsInGroup() then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "PARTY")
    end

    if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "INSTANCE_CHAT")
    end
end

return VersionCheck
