local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.font_size = 13
config.font = wezterm.font({
	family = "JetBrainsMono Nerd Font",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})

config.color_scheme = "Tokyo Night"
config.window_background_opacity = 0.9
config.window_decorations = "NONE"
config.enable_tab_bar = false
config.window_padding = {
	left = 15,
	right = 15,
	top = 15,
	bottom = 13,
}

config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

config.enable_wayland = false

return config
