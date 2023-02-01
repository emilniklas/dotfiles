alias vim=nvim
alias co="git checkout"
alias gap="git add :/ -Ap"

export GPG_TTY=(tty)

set -g fisher_path $HOME/.config/fish/fisher
set -a fish_function_path $fisher_path/functions

# Rust
set -p PATH $HOME/.local/share/cargo/bin

# Go
set -p PATH $HOME/.local/share/go/bin

# Ruby
set -p PATH /opt/homebrew/opt/ruby/bin
set -p PATH /opt/homebrew/lib/ruby/gems/3.1.0/bin

# Pony
set -p PATH $HOME/.local/share/ponyup/bin

# Postgres Client
set -p PATH /opt/homebrew/opt/libpq/bin

# Homebrew
set -p PATH /opt/homebrew/bin

source $fisher_path/conf.d/*
