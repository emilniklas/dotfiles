local wezterm = require 'wezterm'

wezterm.on('update-status', function(window)
  if not window:get_dimensions().is_full_screen then
    window:toggle_fullscreen()
  end
end)

return {
  font = wezterm.font {
    family = 'Berkeley Mono',
    weight = 'Regular',
  },
  font_size = 12,
  line_height = 1.2,
  default_prog = {
    '/opt/homebrew/bin/tmux',
    'new-session',
    '-A',
    '-s',
    'main',
    '-c',
    'code',
  },
  term = 'alacritty',
  enable_tab_bar = false,
  window_decorations = "NONE",
  colors = {
    background = '#19232F',
    foreground = '#E6EAF1',
    cursor_fg = '#19232F',
    cursor_bg = '#E6EAF1',
    ansi = {
      '#000000',
      '#E05E6F',
      '#2EDF79',
      '#F6E36F',
      '#7AADE2',
      '#F250CE',
      '#3AE7EC',
      '#E6EAF1',
    },
    brights = {
      '#77849E',
      '#FFCED4',
      '#86F5B5',
      '#F9EEAD',
      '#BBDAFB',
      '#FF92E7',
      '#A7FDFF',
      '#FAFBFF',
    },
  },
  window_padding = {
    left = 0,
    right = 0,
    top = 30,
    bottom = 0,
  },
  window_close_confirmation = 'NeverPrompt',
}
