local wezterm = require("wezterm")
local action = wezterm.action

return action.PromptInputLine({
	description = "Enter new name for tab",
	action = wezterm.action_callback(function(window, pane, line)
		if line then
			window:active_tab():set_title(line)
		end
	end),
})
