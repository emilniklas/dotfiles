set -g mouse on

set -g status-style default
set -g status-position top
set -g status-interval 1
set -g status-left ""
set -g status-right "#[bg=#ffffff,fg=#f14e32] git #[bg=#f14e32,fg=#ffffff] #(cd #{pane_current_path}; git branch --show-current 2>/dev/null) #[default]  #[bg=#ffffff,fg=#3371e3] k8s #[bg=#3371e3,fg=#ffffff] #(kubectl config current-context) #[default]  #[bg=#ffffff,fg=#1b72e8] gcloud #[bg=#1b72e8,fg=#ffffff] #(gcloud config get core/project) #[default]  #[bg=#ffffff,fg=#5c4ee5] tf #[bg=#5c4ee5,fg=#ffffff] #(cd #{pane_current_path}; terraform workspace show) #[default]  #[fg=#77849E]#(date +'%H:%M')#[default]  "
set -g status-right-length 300

set -g base-index 1
set -g renumber-windows on

set -g window-status-current-format "#[bg=#E6EAF1,fg=#77849E]#{?#{==:#I,1},  ,} #I #[fg=#354256]#W #{?window_zoomed_flag,#[fg=blue]#[bold]⦿ ,}#[default]"
set -g window-status-separator " "
set -g window-status-format "#[bg=#354256,fg=#77849E]#{?#{==:#I,1},  ,} #I #[fg=#C0C8D8]#W #{?window_zoomed_flag,#[fg=blue]#[bold]⦿ ,}#[default]"

set -g pane-border-style "fg=#354256"
set -g pane-active-border-style "fg=#354256"

set -g mode-style "bg=#E6EAF1,fg=#354256"
set -g message-style "bg=#E6EAF1,fg=#354256"

set -g copy-mode-match-style "bg=#77849E,fg=#FAFBFF"
set -g copy-mode-current-match-style "bg=#ECC744,fg=#CF431B"
