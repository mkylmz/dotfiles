local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

config = {
    automatically_reload_config = true,
    enable_tab_bar = false,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",
    default_cursor_style = "BlinkingBar",
    color_scheme = "Nord (Gogh)",
    font = wezterm.font("JetBrains Mono", {weight = "Bold" }),
    font_size = 12.5,
    background = {
        {
            source = {
                File = "C:\\Users\\myilmaz\\Documents\\backgrounds\\bg-monterey.jpg"
            },
            hsb = {
                hue = 1.0,
                saturation = 1.02,
                brightness = 0.20,
            },
            width = "100%",
            height = "100%",
        },
        {
            source = {
                Color = "#282c35"
            },
            width = "100%",
            height = "100%",
            opacity = 0.70,
        }
    },
    window_padding = {
        left = 3,
        right = 3,
        top = 0,
        bottom = 0,
    },
    keys = {
        {
            key = 'o',
            mods = 'CTRL|SHIFT',
            action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
        },
        {
            key = 'e',
            mods = 'CTRL|SHIFT',
            action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
        },
        {
            key = 'w',
            mods = 'CTRL|SHIFT',
            action = wezterm.action.CloseCurrentPane { confirm = true },
        },
        {
            key = 'd',
            mods = 'CTRL',
            action = wezterm.action.SendString('\x04'), -- This sends Ctrl+D (EOF)
        },
        {
            key = 'LeftArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection 'Left',
        },
        {
            key = 'RightArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection 'Right',
        },
        {
            key = 'UpArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection 'Up',
        },
        {
            key = 'DownArrow',
            mods = 'ALT',
            action = wezterm.action.ActivatePaneDirection 'Down',
        },
    },
}

config.default_prog = { 'powershell.exe' }


return config