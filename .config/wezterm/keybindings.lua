local wezterm = require("wezterm")

local M = {}

function M.apply(config)
    config.keys = {
        {
            key = 'F11',
            mods = 'NONE',
            action = wezterm.action.ToggleFullScreen,
        },
    }
end

return M
