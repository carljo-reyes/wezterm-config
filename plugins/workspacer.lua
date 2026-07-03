local wezterm = require 'wezterm'
local action = wezterm.action

return action.PromptInputLine {
    description = wezterm.format {
        { Attribute = { Intensity = 'Bold' } },
        { Foreground = { AnsiColor = 'Fuchsia' } },
        { Text = 'Enter name for new workspace' },
    },
    action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- or the actual line of text they wrote
        if line then
            window:perform_action(
                action.SwitchToWorkspace {
                    name = line,
                },
                pane
            )
        end
    end),
}
