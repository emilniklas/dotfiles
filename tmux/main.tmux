set -g @plugin 'tmux-plugins/tpm'

source-file ~/.config/tmux/gui.tmux
source-file ~/.config/tmux/keybindings.tmux

set -g default-terminal "screen-256color"
set-option -ga terminal-overrides ",*256color:Tc"
set-option -ga terminal-overrides ",alacritty:RGB"

set-option -g default-shell /usr/local/bin/fish

set-environment -g PATH "/usr/local/bin:/bin:/usr/bin"
run '~/.config/tmux/plugins/tpm/tpm'
