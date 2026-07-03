local wezterm = require 'wezterm'

local apply = function(config)
    config.color_scheme = 'Alien Blood (Gogh)'

    local scheme = wezterm.color.get_builtin_schemes()[config.color_scheme]
    config.colors = {
        tab_bar = {
            background = scheme.background
        }
    }

end

return {
    apply = apply
}

