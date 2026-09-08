local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font settings
config.font_size = 16
config.line_height = 1.1

-- Colors
config.colors = {
    cursor_bg = "white",
    cursor_border = "white",
}

-- Appearance
config.cursor_blink_rate = 0
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- Default terminal
config.default_prog = { "powershell.exe", "-NoLogo" }

return config
