set -g @plugin 'tmux-plugins/tpm'

source-file ~/.config/tmux/gui.tmux
source-file ~/.config/tmux/keybindings.tmux

set -g default-terminal "xterm-256color"
set-option -ga terminal-overrides ",xterm-256color:Tc"

set-option -g default-shell /usr/local/bin/fish

set-environment -g PATH "/usr/local/bin:/bin:/usr/bin"
run '~/.config/tmux/plugins/tpm/tpm'
