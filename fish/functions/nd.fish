function nd
  set stat $status

  if test $stat -eq 0
    set icon "✅"
    set sound "Alert"
  else
    set icon "❌"
    set sound "Funk"
  end

  set message 'Task completed with '$stat
  set title $icon' Ding!'

  osascript \
    -e 'display notification "'$message'" with title "'$title'" sound name "'$sound'"'
end
