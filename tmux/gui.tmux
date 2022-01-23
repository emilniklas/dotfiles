set -g mouse on

set -g status-style default
set -g status-position top
set -g status-interval 1
set -g status-left ""
set -g status-right "#[fg=#77849E]#(date +'%H:%M')#[normal]"

set -g base-index 1
set -g renumber-windows on

set -g window-status-current-format "#[bg=#E6EAF1,fg=#77849E] #I #[fg=#354256]#W #{?window_zoomed_flag,#[fg=blue]#[bold]⦿ ,}#[normal]"
set -g window-status-separator " "
set -g window-status-format "#[bg=#354256,fg=#77849E] #I #[fg=#C0C8D8]#W #{?window_zoomed_flag,#[fg=blue]#[bold]⦿ ,}#[normal]"

set -g pane-border-style "fg=#354256"
set -g pane-active-border-style "fg=#354256"

set -g mode-style "bg=#E6EAF1,fg=#354256"
set -g message-style "bg=#E6EAF1,fg=#354256"

set -g copy-mode-match-style "bg=#77849E,fg=#FAFBFF"
set -g copy-mode-current-match-style "bg=#ECC744,fg=#CF431B"
