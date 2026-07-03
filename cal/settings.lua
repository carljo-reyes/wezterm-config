local apply = function(config)
    config.automatically_reload_config = true
    config.window_background_opacity = 0.98
    config.window_decorations = "RESIZE"
end

return {
    apply = apply
}
