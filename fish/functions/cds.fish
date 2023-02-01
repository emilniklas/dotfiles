function cds
  for dir in $argv
    tmux split-window -h -c $dir
  end
end
