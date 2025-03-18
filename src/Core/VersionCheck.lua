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

local function isInDelveOrLFG()
    -- Check if the player is in a Delve (instance category) or LFG
    return IsInGroup(LE_PARTY_CATEGORY_INSTANCE) or IsInGroup(LE_PARTY_CATEGORY_LFG)
end

function VersionCheck:BroadcastVersion()
    Utils.Debug("Broadcasting version: " .. self.CURRENT_VERSION)

    -- Update timestamp for filtering
    messageAttemptTimestamp = GetTime()

    -- If the player is in a party, raid, or instance (LFG or delve), broadcast
    if IsInGuild() then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "GUILD")
    end

    if IsInRaid() then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "RAID")
    elseif IsInGroup() and not isInDelveOrLFG() then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "PARTY")
    end

    -- Also send if in a specific instance chat (LFG/Delve)
    if isInDelveOrLFG() then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_PREFIX, self.CURRENT_VERSION, "INSTANCE_CHAT")
    end
end

return VersionCheck
