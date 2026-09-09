local wezterm = require("wezterm")

local M = {}

function M.setup()
    wezterm.on("format-tab-title", function(tab)
        local process = tab.active_pane.foreground_process_name

        if process:find("powershell.exe") then
            return "PowerShell"
        end

        return tab.active_pane.title
    end)
end

return M
