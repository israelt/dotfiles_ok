-- Standard Awesome Library
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")

-- Bling
local bling = require("module.bling")
bling.module.flash_focus.enable()

-- Autostart
awful.spawn.with_shell("~/.config/awesome/configuration/autorun.sh")

-- Default Applications
terminal = "alacritty"
browser = "firefox"
filemanager = "nautilus"
vscode = "code"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor
discord = "discord"
launcher = "rofi -show drun"

-- Weather API
openweathermap_key = "" -- API Key
openweathermap_city_id = "" -- City ID
weather_units = "metric" -- Unit

-- Global Vars
screen_width = awful.screen.focused().geometry.width
screen_height = awful.screen.focused().geometry.height

-- Default modkey.
modkey = "Mod4"
altkey = "Mod1"
shift = "Shift"
ctrl = "Control"

-- Get Bling Config
require("configuration.bling")

-- Get Keybinds
require("configuration.keys")

-- Get Rules
require("configuration.ruled")

-- Layouts and Window Stuff
require("configuration.window")