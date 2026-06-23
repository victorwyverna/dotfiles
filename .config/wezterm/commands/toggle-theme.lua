local wezterm = require 'wezterm'

local command = {
    brief = 'Toggle: Toggle theme',
    icon = 'md_theme_light_dark',
    action = wezterm.action_callback(function(window)
        local overrides = window:get_config_overrides() or {}
        local current_scheme = window:effective_config().color_scheme

        if current_scheme == 'Catppuccin Mocha' then
            overrides.color_scheme = 'Catppuccin Latte'
        else
            overrides.color_scheme = 'Catppuccin Mocha'
        end

        window:set_config_overrides(overrides)
    end),
}

return command
