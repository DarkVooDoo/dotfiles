-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_padding = {
  left = 3,
  right = 0,
  top = 1,
  bottom = 0,
}

config.hide_tab_bar_if_only_one_tab = true

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'Atom'

-- Finally, return the configuration to wezterm:
return config
