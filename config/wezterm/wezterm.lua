-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end


local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
-- custom.background = "#000000"
config.color_schemes = {
    ["OLEDppuccin"] = custom,
}
-- config.color_scheme = "OLEDppuccin"

config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 16
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
config.native_macos_fullscreen_mode = true

local act = wezterm.action
config.keys = {}
for i = 1, 9 do
    local keyEntry = {
        key = tostring(i),
        mods = 'CMD',
        action = act.Multiple {
            act.SendKey { key = 'a', mods = 'CTRL' },
            act.SendKey { key = tostring(i) },
        },
        when = {
            app = "tmux",
        },
    }
    table.insert(config.keys, keyEntry)
end


return config

