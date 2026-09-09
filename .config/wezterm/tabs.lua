local wezterm = require("wezterm")
local nf = wezterm.nerdfonts

local M = {}

function M.apply(config)
    config.window_frame = {
        font = wezterm.font("Segoe UI", {
            weight = "Bold",
        }),
        font_size = 10,
    }

    wezterm.on('format-tab-title', function(tab)
        local process = tab.active_pane.foreground_process_name

        if process:find('powershell.exe') then
            return nf.md_powershell .. '  Windows PowerShell       '
        end

        return tab.active_pane.title
    end)
end

return M
