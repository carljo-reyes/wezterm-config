local apply = function(config)
    config.automatically_reload_config = true
    config.font_size = 16
    config.initial_cols = 130
    config.initial_rows = 40
    config.tab_max_width = 30
    config.use_fancy_tab_bar = false
    config.window_background_opacity = 0.98
    config.show_new_tab_button_in_tab_bar = false

    -- config.window_decorations = "RESIZE"
end

return {
    apply = apply
}
