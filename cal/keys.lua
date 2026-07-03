local wezterm = require 'wezterm'
--[[
-- references
-- https://wezterm.org/config/keys.html
-- https://wezterm.org/config/keys.html#configuring-key-assignments
--]]

return {
    {
        key = 'H',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Left'
    },
    {
        key = 'J',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Down'
    },
    {
        key = 'K',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Up'
    },
    {
        key = 'L',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Right'
    },
    {
        key = 'Z',
        mods = 'CMD|SHIFT',
        action = wezterm.action.TogglePaneZoomState
    },
    {
        key = '9',
        mods = 'ALT',
        action = wezterm.action.ShowLauncherArgs {
            flags = 'FUZZY|WORKSPACES',
        },
    },
    {
        key = '"',
        mods = 'CMD|SHIFT',
        action = wezterm.action.SplitPane {
            direction = 'Down',
        },
    },
    {
        key = "'",
        mods = 'CMD',
        action = wezterm.action.SplitPane {
            direction = 'Right',
        },
    },
}
