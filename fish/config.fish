alias vim=nvim
alias co="git checkout"
alias gap="git add :/ -Ap"

export GPG_TTY=(tty)

set -g fisher_path $HOME/.config/fish/fisher
set -a fish_function_path $fisher_path/functions
