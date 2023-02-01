function npmfree
  set -l success 1
  for name in $argv
    echo -n $name
    if not curl -sI https://www.npmjs.com/package/$name | head -n 1 | awk '{exit $2 - 200}'
      echo "✅"
      set success 0
    else
      echo "❌"
    end
  end
  return $success
end
