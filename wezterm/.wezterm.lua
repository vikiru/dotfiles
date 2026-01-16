-- Pull in the wezterm API
local wezterm = require("wezterm")
-- Use the config_builder for clearer config structure
local config = wezterm.config_builder()

-- === Appearance ===
config.cursor_blink_rate = 0
config.colors = {
    foreground = "#7DF9AA", -- glowing mint text
    background = "#030B16", -- deep night background

    cursor_bg = "#7DF9AA",
    cursor_fg = "#030B16",
    cursor_border = "#7DF9AA",

    selection_fg = "#030B16",
    selection_bg = "#7DF9AA",

    scrollbar_thumb = "#374859", -- desaturated blue-gray
    split = "#4A5A6A",        -- border between panes

    ansi = {
        "#030B16", -- black: true background
        "#FF5C57", -- red: error / invalid cmd
        "#7DF9AA", -- green: success / ok
        "#FAD000", -- yellow: warning
        "#57C7FF", -- blue: info, paths
        "#D67AD2", -- magenta: keywords / symbols
        "#4EF0F0", -- cyan: hints, minor info
        "#C0D4E5", -- white: light neutral
    },

    brights = {
        "#5D6D83", -- bright black: comments
        "#FF8C87", -- bright red: critical
        "#AAFFBB", -- bright green: bold success
        "#FFE680", -- bright yellow: highlight
        "#A3E7FF", -- bright blue: links
        "#F0B9F0", -- bright magenta: emphasis
        "#B5FDFD", -- bright cyan: output hints
        "#FFFFFF", -- bright white
    },

    indexed = { [136] = "#FAD000" },

    compose_cursor = "#FAD000",

    copy_mode_active_highlight_bg = { Color = "#7DF9AA" },
    copy_mode_active_highlight_fg = { Color = "#030B16" },
    copy_mode_inactive_highlight_bg = { Color = "#5D6D83" },
    copy_mode_inactive_highlight_fg = { Color = "#FFFFFF" },

    quick_select_label_bg = { Color = "#FAD000" },
    quick_select_label_fg = { Color = "#030B16" },
    quick_select_match_bg = { AnsiColor = "Navy" },
}

config.colors.tab_bar = {
    background = "#030B16", -- bar base

    active_tab = {
        bg_color = "#0C1B29", -- lifted slightly above bg
        fg_color = "#7DF9AA", -- mint
        intensity = "Bold",
        underline = "None",
        italic = false,
        strikethrough = false,
    },

    inactive_tab = {
        bg_color = "#08131F", -- subtle dark shade
        fg_color = "#64788C", -- muted steel blue
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
    },

    inactive_tab_hover = {
        bg_color = "#152532", -- hover elevation
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

-- Font Settings
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_rules = {
    {
        intensity = "Bold",
        italic = false,
        font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" }),
    },
}
config.font_size = 14.0

-- Background Image
-- config.background = {
-- 	{
-- 		source = { File = "<path_to_image>.png" },
-- 		opacity = 0.5, -- or 1.0
-- 		hsb = {
-- 			brightness = 0.5, -- 50%
-- 			hue = 1.0,
-- 			saturation = 1.0,
-- 		},
-- 	},
-- }

-- Transparency
-- config.win32_system_backdrop = "Acrylic"
-- config.window_background_opacity = 0.8
config.text_background_opacity = 1

-- Padding
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- -- === Tab Bar ===
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false

-- === Window ===
-- config.window_decorations = "NONE"
-- config.initial_rows = 32
-- config.initial_cols = 120

-- -- === Behavior ===
config.scrollback_lines = 1000
config.automatically_reload_config = true
config.default_domain = "WSL:Ubuntu-24.04"
config.default_cwd = "~"
config.audible_bell = "Disabled"

-- === Keybindings ===
config.keys = {
    -- Tab management
    { key = "t",          mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("DefaultDomain") },

    -- Pane splitting
    {
        key = "-",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
        key = "\\",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },

    -- Pane navigation
    { key = "h",          mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
    { key = "l",          mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },
    { key = "k",          mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
    { key = "j",          mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },

    -- Resize panes
    { key = "LeftArrow",  mods = "CTRL|ALT",   action = wezterm.action.AdjustPaneSize({ "Left", 2 }) },
    { key = "RightArrow", mods = "CTRL|ALT",   action = wezterm.action.AdjustPaneSize({ "Right", 2 }) },
    { key = "UpArrow",    mods = "CTRL|ALT",   action = wezterm.action.AdjustPaneSize({ "Up", 2 }) },
    { key = "DownArrow",  mods = "CTRL|ALT",   action = wezterm.action.AdjustPaneSize({ "Down", 2 }) },
}

-- === Optional Mouse Bindings ===
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

-- === Finalize ===
return config
