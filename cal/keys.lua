local wezterm = require 'wezterm'
local action = wezterm.action
local workspacer = require 'plugins.workspacer'
local map = function(key, mods, action)
    return {
        key = key,
        mods = mods,
        action = action
    }
end

--[[
-- references
-- https://wezterm.org/config/keys.html
-- https://wezterm.org/config/keys.html#configuring-key-assignments
--]]
return {
    map('H', 'CMD|SHIFT', action.ActivatePaneDirection 'Left'),
    map('J', 'CMD|SHIFT', action.ActivatePaneDirection 'Down'),
    map('K', 'CMD|SHIFT', action.ActivatePaneDirection 'Up'),
    map('L', 'CMD|SHIFT', action.ActivatePaneDirection 'Right'),
    map('Z', 'CMD|SHIFT', action.TogglePaneZoomState),
    map('0', 'CMD', action.ShowLauncherArgs {
        flags = 'FUZZY|WORKSPACES',
    }),
    map('"', 'CMD|SHIFT', action.SplitPane {
        direction = 'Down',
    }),
    map("'", 'CMD', action.SplitPane {
        direction = 'Right',
    }),
    {
        key = 'N',
        mods = 'CMD|SHIFT',
        action = workspacer
    },
}
