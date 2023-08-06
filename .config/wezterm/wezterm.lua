-- Pull in the wezterm API
local wezterm = require "wezterm"
-- This table is the declaration that will hold the configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config = {
  color_scheme = "Tommorow Night",
  window_background_opacity = 0.75,
  font_size = 11,
  hide_tab_bar_if_only_one_tab = true,
  keys = {
    {key="n", mods="SHIFT|CTRL", action="ToggleFullScreen"},
  }
}

-- and finally, return the configuration to wezterm
return config

