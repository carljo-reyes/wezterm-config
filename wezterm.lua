local wezterm = require 'wezterm'
local keys = require 'cal.keys'
local theme = require 'cal.theme'
local settings = require 'cal.settings'

local config = wezterm.config_builder()
config.keys = keys
theme.apply(config)
settings.apply(config)

wezterm.on('format-window-title', function(tab, pane, tabs, panes, config)
    return wezterm.mux.get_active_workspace()
end)

return config
