local wezterm = require 'wezterm'
--[[
-- references
-- https://wezterm.org/config/keys.html
-- https://wezterm.org/config/keys.html#configuring-key-assignments
--]]

return {
    {
        key = '"',
        mods = 'CMD|SHIFT',
        action = wezterm.action.SplitPane {
            direction = 'Down',
        },
    },
}
