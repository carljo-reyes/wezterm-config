local wezterm = require("wezterm")
local action = wezterm.action
local workspacer = require("plugins.workspacer")
local rename_workspace = require("plugins.rename_workspace")
local tabber = require("plugins.tabber")
local map = function(key, mods, act)
	return {
		key = key,
		mods = mods,
		action = act,
	}
end

--[[
-- references
-- https://wezterm.org/config/keys.html
-- https://wezterm.org/config/keys.html#configuring-key-assignments
-- https://wezterm.org/config/lua/keyassignment/index.html
--]]
return {
	map("Enter", "CMD", action.ToggleFullScreen),
	map("l", "CMD", action.ClearScrollback("ScrollbackAndViewport")),
	map("'", "CMD", action.SplitVertical),
	map('"', "CMD|SHIFT", action.SplitHorizontal),
	map("f", "CMD", action.Search({ CaseInSensitiveString = "" })),
	map("n", "CMD", action.SpawnWindow),
	map("z", "CMD", action.TogglePaneZoomState),

	map("h", "CMD", action.ActivatePaneDirection("Left")),
	map("j", "CMD", action.ActivatePaneDirection("Down")),
	map("k", "CMD", action.ActivatePaneDirection("Up")),
	map("l", "CMD", action.ActivatePaneDirection("Right")),

	map("H", "CMD|SHIFT", action.ActivateTabRelative(-1)),
	map("J", "CMD|SHIFT", action.SwitchWorkspaceRelative(1)),
	map("K", "CMD|SHIFT", action.SwitchWorkspaceRelative(-1)),
	map("L", "CMD|SHIFT", action.ActivateTabRelative(1)),

	map("R", "CMD|SHIFT", action.ReloadConfiguration),
	map("I", "CMD|SHIFT", action.ActivateTabRelative(-1)),
	map("O", "CMD|SHIFT", action.ActivateTabRelative(1)),
	map("N", "CMD|SHIFT", action.SpawnWindow),
	map("Z", "CMD|SHIFT", action.TogglePaneZoomState),
	map(
		"U",
		"CMD|SHIFT",
		action.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		})
	),
	map("[", "CMD|SHIFT", action.SwitchWorkspaceRelative(-1)),
	map("]", "CMD|SHIFT", action.SwitchWorkspaceRelative(1)),

	map("|", "CMD|SHIFT", action.SwitchWorkspaceRelative(-1)),
	map("\\", "CMD", action.SwitchWorkspaceRelative(1)),
	map("o", "CMD", workspacer),
	map(">", "CMD|SHIFT", rename_workspace),
	map("<", "CMD|SHIFT", tabber),
}
