-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- wezterm.on('user-var-changed', function(window, pane, name, value)
--     local overrides = window:get_config_overrides() or {}
--     if name == "ZEN_MODE" then
--         local incremental = value:find("+")
--         local number_value = tonumber(value)
--         if incremental ~= nil then
--             while (number_value > 0) do
--                 window:perform_action(wezterm.action.IncreaseFontSize, pane)
--                 number_value = number_value - 1
--             end
--             overrides.enable_tab_bar = false
--         elseif number_value < 0 then
--             window:perform_action(wezterm.action.ResetFontSize, pane)
--             overrides.font_size = nil
--             overrides.enable_tab_bar = true
--         else
--             overrides.font_size = number_value
--             overrides.enable_tab_bar = false
--         end
--     end
--     window:set_config_overrides(overrides)
-- end)
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end


local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
-- custom.background = "#000000"
-- config.color_schemes = {
--   ["OLEDppuccin"] = custom,
-- }
-- config.color_scheme = "OLEDppuccin"

config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 16
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
config.native_macos_fullscreen_mode = true

return config
