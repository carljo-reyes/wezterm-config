local wezterm = require 'wezterm'
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

local tab = function(tab)
    return " " .. tab
end
local apply = function(config)
    local theme = config.color_scheme
    local colors = wezterm.color.get_builtin_schemes()[theme]
    local surface = colors.cursor and colors.cursor.bg or colors.ansi[1]
    local background = colors.tab_bar and colors.tab_bar.inactive_tab and colors.tab_bar.inactive_tab.bg_color or colors.background

    tabline.setup({
        options = {
            icons_enabled = true,
            -- theme = theme,
            tabs_enabled = true,
            theme_overrides = {
                tab = {
                    inactive = { fg = colors.ansi[5], bg = surface },
                    active = { fg = colors.ansi[6], bg = background },
                    inactive_hover = { fg = colors.ansi[6], bg = surface },
                }
            },
            section_separators = {
                left = wezterm.nerdfonts.ple_lower_left_triangle,
                right = wezterm.nerdfonts.ple_upper_right_triangle,
            },
            component_separators = {
                left = wezterm.nerdfonts.ple_lower_left_triangle,
                right = wezterm.nerdfonts.ple_upper_right_triangle,
            },
            tab_separators = {
                left = wezterm.nerdfonts.ple_lower_left_triangle,
                right = wezterm.nerdfonts.ple_upper_right_triangle,
            },
        },
        sections = {
            tabline_a = { 'mode' },
            tabline_b = {},
            tabline_c = {},
            tab_active = {
                { 'zoomed', padding = 0 },
                { 
                    'tab',
                    fmt = tab,
                    icons_enabled = true
                },
            },
            tab_inactive = { 
                { 'zoomed', padding = 0 },
                {
                    'tab',
                    fmt = tab,
                    icons_enabled = true
                },
            },
            tabline_x = {},
            tabline_y = {},
            tabline_z = { 
                { 'domain', fmt = tab } 
            },
        },
        extensions = {},
    })
end

return {
    apply = apply
}
