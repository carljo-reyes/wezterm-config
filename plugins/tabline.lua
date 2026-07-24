local wezterm = require("wezterm")
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

local tab = function(tab)
  return " " .. tab
end
local apply = function(config)
  local theme = config.color_scheme
  local colors = wezterm.color.get_builtin_schemes()[theme]
  -- Tab bar uses black; terminal background stays purple from the colorscheme.
  local surface = colors.ansi[1]

  tabline.setup({
    options = {
      icons_enabled = true,
      theme = theme,
      tabs_enabled = true,
      theme_overrides = {
        normal_mode = {
          -- c.bg is used as separator/tab-bar fill behind powerline glyphs
          c = { fg = colors.foreground, bg = surface },
        },
        tab = {
          inactive = { fg = colors.ansi[5], bg = surface },
          active = { fg = colors.ansi[6], bg = surface },
          inactive_hover = { fg = colors.ansi[6], bg = surface },
        },
      },
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
      tabline_a = { "mode" },
      tabline_b = {},
      tabline_c = {},
      tab_active = {
        { "zoomed", padding = 0 },
        {
          "tab",
          fmt = tab,
          icons_enabled = true,
        },
      },
      tab_inactive = {
        { "zoomed", padding = 0 },
        {
          "tab",
          fmt = tab,
          icons_enabled = true,
        },
      },
      tabline_x = {},
      tabline_y = { "workspace" },
      tabline_z = {
        { "domain", fmt = tab },
      },
    },
    extensions = {},
  })

  tabline.apply_to_config(config)
  -- config.colors = config.colors or {}
  -- config.colors.tab_bar = config.colors.tab_bar or {}
  -- config.colors.tab_bar.background = surface
end

return {
  apply = apply,
}
