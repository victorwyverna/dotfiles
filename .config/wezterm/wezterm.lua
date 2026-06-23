local wezterm = require 'wezterm'
-- local constants = require 'constants'
local commands = require 'commands'

local mux = wezterm.mux
local config = wezterm.config_builder()

-- center window on startup
wezterm.on('gui-startup', function(cmd)
    local _, _, mux_window = mux.spawn_window(cmd or {})
    local window = mux_window:gui_window()

    local screen = wezterm.gui.screens().active
    local dimensions = window:get_dimensions()

    local x = screen.x + (screen.width - dimensions.pixel_width) / 2
    local y = screen.y + (screen.height - dimensions.pixel_height) / 2

    window:set_position(
        math.floor(x),
        math.floor(y)
    )
end)

-- init
config.initial_cols = 120
config.initial_rows = 30

-- font settings
config.font_size = 14
config.line_height = 1.2
config.font = wezterm.font_with_fallback({
    'Essential PragmataPro',
    'PragmataPro'
})

-- colors
config.color_scheme = 'Catppuccin Mocha'

-- appearance
config.cursor_blink_rate = 0
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
-- config.window_background_image = constants.bg_image
config.window_padding = {
    left = 10,
    right = 10,
    top = 0,
    bottom = 0,
}

-- miscellaneous settings
config.max_fps = 120
config.prefer_egl = true

-- custom commands
wezterm.on('augment-command-palette', function()
    return commands
end)


return config
