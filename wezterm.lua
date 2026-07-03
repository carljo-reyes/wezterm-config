local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.keys = require 'cal.keys'
require 'cal.theme'.apply(config)
require 'cal.options'.apply(config)
require 'cal.events'
require 'plugins.tabline'.apply(config)

return config
