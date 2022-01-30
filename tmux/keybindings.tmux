bind -n C-h select-pane -L  # move left
bind -n C-j select-pane -D  # move down
bind -n C-k select-pane -U  # move up
bind -n C-l select-pane -R  # move right

bind c new-window -c "~/code"
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
