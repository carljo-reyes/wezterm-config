local wezterm = require 'wezterm'
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

tabline.setup({
    options = {
        icons_enabled = true,
        theme = 'Alien Blood (Gogh)',
        tabs_enabled = true,
        theme_overrides = {},
        section_separators = {
            left = wezterm.nerdfonts.pl_left_hard_divider,
            right = wezterm.nerdfonts.pl_right_hard_divider,
        },
        component_separators = {
            left = wezterm.nerdfonts.pl_left_soft_divider,
            right = wezterm.nerdfonts.pl_right_soft_divider,
        },
        tab_separators = {
            left = wezterm.nerdfonts.pl_left_hard_divider,
            right = wezterm.nerdfonts.pl_right_hard_divider,
        },
    },
    sections = {
        tabline_a = { 'mode' },
        tabline_b = {},
        tabline_c = {},
        -- tabline_b = { '' },
        -- tabline_c = { '' },
        tab_active = {
            { 'zoomed', padding = 0 },
            { 'tab' },
        },
        tab_inactive = { 
            { 'zoomed', padding = 0 },
            { 'tab' },
        },
        tabline_x = {},
        tabline_y = {},
        tabline_z = { 'domain' },
    },
    extensions = {},
})
