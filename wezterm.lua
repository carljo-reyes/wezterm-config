local wezterm = require 'wezterm'
local keys = require 'cal.keys'
local theme = wezterm.plugin.require('https://github.com/neapsix/wezterm').main

local config = wezterm.config_builder()

config.keys = keys

-- themes: https://wezterm.org/colorschemes/index.html
config.color_scheme = theme
-- config.color_scheme = 'Aardvark Blue'
-- config.color_scheme = 'AdventureTime'

return config
