local wezterm = require 'wezterm'
local action = wezterm.action

return action.PromptInputLine {
    description = 'Enter new name for workspace',
    action = wezterm.action_callback(function(window, pane, line)
        if line then
            wezterm.mux.rename_workspace(
                wezterm.mux.get_active_workspace(),
                line
            )
        end
    end),
}
