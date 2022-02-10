function mkcd -d "Create a directory and set CWD"
  mkdir $argv
  cd $argv[(count $argv)]
end
