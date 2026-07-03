local wezterm = require 'wezterm'
local action = wezterm.action
local workspacer = require 'plugins.workspacer'
local rename_workspace = require 'plugins.rename_workspace'
local tabber = require 'plugins.tabber'
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
-- https://wezterm.org/config/lua/keyassignment/index.html
--]]
return {
    map("l", 'CMD', action.ClearScrollback 'ScrollbackAndViewport'),
    map("'", 'CMD', action.SplitVertical),
    -- map('+', 'CMD', action.IncreaseFontSize),
    -- map('-', 'CMD', action.DecreaseFontSize),
    map('"', 'CMD|SHIFT', action.SplitHorizontal),
    map('H', 'CMD|SHIFT', action.ActivatePaneDirection 'Left'),
    map('J', 'CMD|SHIFT', action.ActivatePaneDirection 'Down'),
    map('K', 'CMD|SHIFT', action.ActivatePaneDirection 'Up'),
    map('L', 'CMD|SHIFT', action.ActivatePaneDirection 'Right'),
    map('Z', 'CMD|SHIFT', action.TogglePaneZoomState),
    map('I', 'CMD|SHIFT', action.ActivateTabRelative(-1)),
    map('O', 'CMD|SHIFT', action.ActivateTabRelative(1)),
    map('U', 'CMD|SHIFT', action.ShowLauncherArgs {
        flags = 'FUZZY|WORKSPACES',
    }),
    map('|', 'CMD|SHIFT', action.SwitchWorkspaceRelative(-1)),
    map('\\', 'CMD', action.SwitchWorkspaceRelative(1)),
    map('o', 'CMD', workspacer),
    map('R', 'CMD|SHIFT', rename_workspace),
    map('<', 'CMD|SHIFT', tabber),
}
