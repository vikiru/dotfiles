local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = { "wsl.exe", "--cd", "~", "-d", "Ubuntu-24.04" }
config.default_domain = "WSL:Ubuntu-24.04"
config.default_cwd = "~"

config.wsl_domains = {
	{
		name = "WSL:Ubuntu-24.04",
		distribution = "Ubuntu-24.04",
		default_cwd = "~",
	},
}

config.cursor_blink_rate = 0

config.colors = {
	foreground = "#7DF9AA",
	background = "#030B16",

	cursor_bg = "#FFD866",
	cursor_fg = "#030B16",
	cursor_border = "#FFD866",

	selection_fg = "#C0D4E5",
	selection_bg = "#374859",

	scrollbar_thumb = "#2A3A4A",
	split = "#374859",

	ansi = {
		"#030B16",
		"#FF6E64",
		"#7DF9AA",
		"#FFD866",
		"#57C7FF",
		"#D67AD2",
		"#4EF0F0",
		"#C0D4E5",
	},

	brights = {
		"#5D6D83",
		"#FF8C87",
		"#AAFFBB",
		"#FFE680",
		"#A3E7FF",
		"#F0B9F0",
		"#B5FDFD",
		"#FFFFFF",
	},

	indexed = {
		[136] = "#FFD866",
		[16] = "#FF6E64", -- for git diff red
		[17] = "#7DF9AA", -- for git diff green
		[18] = "#FFD866", -- for warnings
	},

	compose_cursor = "#FFD866",

	copy_mode_active_highlight_bg = { Color = "#7DF9AA" },
	copy_mode_active_highlight_fg = { Color = "#030B16" },
	copy_mode_inactive_highlight_bg = { Color = "#5D6D83" },
	copy_mode_inactive_highlight_fg = { Color = "#FFFFFF" },

	quick_select_label_bg = { Color = "#FFD866" },
	quick_select_label_fg = { Color = "#030B16" },
	quick_select_match_bg = { AnsiColor = "Navy" },
	quick_select_match_fg = { Color = "#FFFFFF" },

	char_select_bg_color = "#374859",
	char_select_fg_color = "#C0D4E5",
	command_palette_bg_color = "#030B16",
	command_palette_fg_color = "#7DF9AA",
	command_palette_font_size = 14.0,
}

config.colors.tab_bar = {
	background = "#030B16",

	active_tab = {
		bg_color = "#0C1B29",
		fg_color = "#7DF9AA",
		intensity = "Bold",
		underline = "None",
		italic = false,
		strikethrough = false,
	},

	inactive_tab = {
		bg_color = "#08131F",
		fg_color = "#64788C",
		intensity = "Normal",
		underline = "None",
		italic = false,
		strikethrough = false,
	},

	inactive_tab_hover = {
		bg_color = "#152532",
		fg_color = "#7DF9AA",
		italic = true,
	},

	new_tab = {
		bg_color = "#08131F",
		fg_color = "#64788C",
		italic = true,
	},

	new_tab_hover = {
		bg_color = "#1D3545",
		fg_color = "#7DF9AA",
		italic = true,
	},

	inactive_tab_edge = "#0A1824",
}

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

config.font = wezterm.font("Monaspace Neon NF")
config.font_size = 19.0

config.text_background_opacity = 1.0
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false

config.window_decorations = "RESIZE"

config.scrollback_lines = 1000
config.automatically_reload_config = true

config.keys = {
	{ key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("DefaultDomain") },
	{ key = "|", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "-", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "\\", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "h", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "l", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "k", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "j", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },

	{ key = "w", mods = "Ctrl|Shift", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	{ key = "q", mods = "CTRL", action = wezterm.action.CloseCurrentTab({ confirm = true }) },

	{ key = "LeftArrow", mods = "CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Left", 2 }) },
	{ key = "RightArrow", mods = "CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Right", 2 }) },
	{ key = "UpArrow", mods = "CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Up", 2 }) },
	{ key = "DownArrow", mods = "CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Down", 2 }) },
}

config.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
}

config.front_end = "OpenGL"
config.animation_fps = 60
config.max_fps = 60
config.prefer_egl = true

return config
