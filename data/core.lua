--=====================================================================================
-- SRLU | SkyrimLevelUp - core.lua
-- Version: 3.0.0
-- Author: DonnieDice
-- RGX Mods Collection - RealmGX Community Project
--=====================================================================================

local RGX = assert(_G.RGXFramework, "SRLU: RGX-Framework not loaded")

SRLU = SRLU or {}

local ADDON_VERSION = "3.0.5"
local ADDON_NAME = "SkyrimLevelUp"
local PREFIX = "|Tinterface/addons/SkyrimLevelUp/media/icon:16:16|t - |cffffffff[|r|cffa0a0a0SRLU|r|cffffffff]|r "
local TITLE = "|Tinterface/addons/SkyrimLevelUp/media/icon:18:18|t [|cffa0a0a0S|r|cffffffffkyrim|r |cffa0a0a0L|r|cffffffffevel|r |cffa0a0a0U|r|cffffffffp!|r]"

SRLU.version = ADDON_VERSION
SRLU.addonName = ADDON_NAME

local Sound = RGX:GetSound()

local handle = Sound:Register(ADDON_NAME, {
sounds = {
high = "Interface\\Addons\\SkyrimLevelUp\\sounds\\SRLU_high.ogg",
medium = "Interface\\Addons\\SkyrimLevelUp\\sounds\\SRLU_med.ogg",
low = "Interface\\Addons\\SkyrimLevelUp\\sounds\\SRLU_low.ogg",
},
defaultSoundId = 569593,
savedVar = "SRLUSettings",
defaults = {
enabled = true,
soundVariant = "medium",
muteDefault = true,
showWelcome = true,
volume = "Master",
firstRun = true,
},
triggerEvent = "PLAYER_LEVEL_UP",
addonVersion = ADDON_VERSION,
})

SRLU.handle = handle

local L = SRLU.L or {}
local initialized = false

local function ShowHelp()
print(PREFIX .. " " .. (L["HELP_HEADER"] or ""))
print(PREFIX .. " " .. (L["HELP_TEST"] or ""))
print(PREFIX .. " " .. (L["HELP_ENABLE"] or ""))
print(PREFIX .. " " .. (L["HELP_DISABLE"] or ""))
print(PREFIX .. " |cffffffff/srlu high|r - Use high quality sound")
print(PREFIX .. " |cffffffff/srlu med|r - Use medium quality sound")
print(PREFIX .. " |cffffffff/srlu low|r - Use low quality sound")
end

local function HandleSlashCommand(args)
local command = string.lower(args or "")
if command == "" or command == "help" then
ShowHelp()
elseif command == "test" then
print(PREFIX .. " " .. (L["PLAYING_TEST"] or ""))
handle:Test()
elseif command == "enable" then
handle:Enable()
print(PREFIX .. " " .. (L["ADDON_ENABLED"] or ""))
elseif command == "disable" then
handle:Disable()
print(PREFIX .. " " .. (L["ADDON_DISABLED"] or ""))
elseif command == "high" then
handle:SetVariant("high")
print(PREFIX .. " " .. string.format(L["SOUND_VARIANT_SET"] or "%s", "high"))
elseif command == "med" or command == "medium" then
handle:SetVariant("medium")
print(PREFIX .. " " .. string.format(L["SOUND_VARIANT_SET"] or "%s", "medium"))
elseif command == "low" then
handle:SetVariant("low")
print(PREFIX .. " " .. string.format(L["SOUND_VARIANT_SET"] or "%s", "low"))
else
print(PREFIX .. " " .. (L["ERROR_PREFIX"] or "") .. " " .. (L["ERROR_UNKNOWN_COMMAND"] or ""))
end
end

RGX:RegisterEvent("ADDON_LOADED", function(event, addonName)
if addonName ~= ADDON_NAME then return end
handle:SetLocale(SRLU.L)
L = SRLU.L or {}
handle:Init()
initialized = true
end, "SRLU_ADDON_LOADED")

RGX:RegisterEvent("PLAYER_LEVEL_UP", function()
if initialized then
handle:Play()
end
end, "SRLU_PLAYER_LEVEL_UP")

RGX:RegisterEvent("PLAYER_LOGIN", function()
if not initialized then
handle:SetLocale(SRLU.L)
L = SRLU.L or {}
handle:Init()
initialized = true
end
handle:ShowWelcome(PREFIX, TITLE)
end, "SRLU_PLAYER_LOGIN")

RGX:RegisterEvent("PLAYER_LOGOUT", function()
handle:Logout()
end, "SRLU_PLAYER_LOGOUT")

RGX:RegisterSlashCommand("srlu", function(msg)
local ok, err = pcall(HandleSlashCommand, msg)
if not ok then
print(PREFIX .. " |cffff0000SRLU Error:|r " .. tostring(err))
end
end, "SRLU_SLASH")
