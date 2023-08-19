local wezterm = require "wezterm"

return {
  color_scheme = "Tokyo Night",
  font = wezterm.font_with_fallback({
    family = "JetBrainsMono Nerd Font",
    weight = "Regular",
    italic = true,
  }),
  font_size = 10,
  window_decorations = "NONE",
  window_background_opacity = 0.85,
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,
  audible_bell = "Disabled",
  cursor_blink_rate = 0,
  keys = {
    { key = "f", mods = "SHIFT|CTRL", action = "ToggleFullScreen" },
  },
  window_padding = {
    top = 0,
    bottom = 0,
    left = 1,
    right = 1,
  },
}
