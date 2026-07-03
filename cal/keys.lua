local wezterm = require 'wezterm'
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
    map('H', 'CMD|SHIFT', wezterm.action.ActivatePaneDirection 'Left'),
    map('J', 'CMD|SHIFT', wezterm.action.ActivatePaneDirection 'Down'),
    map('K', 'CMD|SHIFT', wezterm.action.ActivatePaneDirection 'Up'),
    map('L', 'CMD|SHIFT', wezterm.action.ActivatePaneDirection 'Right'),
    map('Z', 'CMD|SHIFT', wezterm.action.TogglePaneZoomState),
    map('0', 'CMD', wezterm.action.ShowLauncherArgs {
        flags = 'FUZZY|WORKSPACES',
    }),
    map('"', 'CMD|SHIFT', wezterm.action.SplitPane {
        direction = 'Down',
    }),
    map("'", 'CMD', wezterm.action.SplitPane {
        direction = 'Right',
    }),
}
