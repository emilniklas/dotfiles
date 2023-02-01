set -g @plugin 'tmux-plugins/tpm'

source-file ~/.config/tmux/gui.tmux
source-file ~/.config/tmux/keybindings.tmux

set -g default-terminal "alacritty"
set -ga terminal-features ",alacritty:RGB"

set-option -g default-shell /opt/homebrew/bin/fish

set-environment -g PATH "/opt/homebrew/bin:/usr/local/bin:/bin:/usr/bin"

run '~/.config/tmux/plugins/tpm/tpm'
