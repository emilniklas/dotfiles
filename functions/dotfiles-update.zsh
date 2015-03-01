function dotfiles-update() {
    cwd=$(pwd)
    cd ~/.dotfiles
    git pull &>/dev/null
    cd $cwd
    . ~/.bashrc
    echo "Dotfiles updated"
}