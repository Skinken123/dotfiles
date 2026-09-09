local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font settings
config.font_size = 15
config.line_height = 1.1
config.font = wezterm.font("Cascadia Mono")

-- Colors
config.colors = {
    cursor_bg = "white",
    cursor_border = "white",
}

-- Appearance
config.cursor_blink_rate = 0
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = false
config.window_padding = {
    left = 5,
    right = 5,
    top = 1,
    bottom = 2,
}

-- Default terminal
config.default_prog = { "powershell.exe", "-NoLogo" }

-- Tab appearance
require("tabs").apply(config)

return config
