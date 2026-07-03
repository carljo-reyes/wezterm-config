local wezterm = require 'wezterm'

--[[
-- colorschemes: https://wezterm.org/colorschemes/index.html
--]]
local apply = function(config)
    config.color_scheme = 'purplepeter'
    -- config.color_scheme = 'Alien Blood (Gogh)'

    local scheme = wezterm.color.get_builtin_schemes()[config.color_scheme]
    config.colors = {
        tab_bar = {
            background = scheme.ansi[1]
        }
    }

end

return {
    apply = apply
}

