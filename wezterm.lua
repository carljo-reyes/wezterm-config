local wezterm = require 'wezterm'
local keys = require 'cal.keys'
local theme = require 'cal.theme'
local settings = require 'cal.settings'
require 'cal.events'

local config = wezterm.config_builder()
config.keys = keys
theme.apply(config)
settings.apply(config)

return config
