local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.keys = require 'cal.keys'
require 'cal.events'
require 'cal.theme'.apply(config)
require 'plugins.tabline'.apply(config)
require 'cal.options'.apply(config)

return config
