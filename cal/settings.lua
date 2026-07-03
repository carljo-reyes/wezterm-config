local apply = function(config)
    config.automatically_reload_config = true
    config.font_size = 14
    config.initial_cols = 130
    config.initial_rows = 40
    config.window_background_opacity = 0.98

    -- config.window_decorations = "RESIZE"
end

return {
    apply = apply
}
