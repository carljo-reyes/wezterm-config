local wezterm = require('wezterm')

local apply = function(config)
    config.adjust_window_size_when_changing_font_size = false
    config.automatically_reload_config = true
    config.font = wezterm.font 'FiraMono Nerd Font Propo'
    config.font_size = 16
    config.initial_cols = 130
    config.initial_rows = 40
    config.line_height = 1.13
    config.tab_max_width = 30
    config.use_fancy_tab_bar = false
    config.window_background_opacity = 1
    -- config.window_background_opacity = 0.95
    config.show_new_tab_button_in_tab_bar = false
    config.window_frame = {
        border_left_width = '5',
        border_right_width = '5',
        border_left_color = 'orange',
        border_right_color = 'orange',
    }
    config.window_padding = {
        left = 10,
        right = 10,
        top = 0,
        bottom = 0,
    }

    -- config.window_decorations = "RESIZE"
end

return {
    apply = apply
}
