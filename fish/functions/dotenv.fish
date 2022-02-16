function dotenv -a file
  if test -z $file
    set file ".env"
  end

  if not test -e $file
    set_color red --bold
    echo -n $file
    set_color normal
    set_color 77849E --italic
    echo " does not exist"
    return 1
  end

  begin
    set -l IFS
    set code (awk '
      /^(#|$)/ {
        next
      }
      {
        sub("=", " ")
      }
      /^[^ ]+[[:space:]]+"/ {
        print "set -gx " $0
        next
      }
      {
        sub(" ", " \\"")
        print "set -gx " $0 "\\""
      }
    ' $file)
  end

  eval $code

  set_color yellow
  echo -n "$file "
  set_color 77849E
  echo "↩"
end
