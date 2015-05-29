# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias f="open ."

# FILES
alias l="ls -l -G" # colored ls
alias la="ls -l -G -a" # list include hidden files
alias rrm="rm -rf"

# GIT
alias g="git"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gu="git up"
alias gca="git add . && git commit -am"
alias gpl="git pull"
alias gs="git status"
alias gpub="gpublish"

# EDITORS
ps="pstorm"
st="subl"
alias ps=$ps
alias st=$st
alias vs="open -a /Applications/Visual\ Studio\ Code.app"

# SHORTCUTS
alias hosts='subl /etc/hosts'

# LARAVEL
alias art="php artisan"
alias m:c="php artisan make:controller"
alias seed="php artisan db:seed"
alias mig="php artisan migrate"

# DART (PUB)
alias p="pub"
alias pru="pub run"
alias pg="pub get"
alias pt="pub run test"
alias ptt="pub run test test/"

# BROWSERS
alias safari="open -a /Applications/Safari.app"
alias chrome="open -a /Applications/Google\ Chrome.app"
alias dartium="open -a /Applications/Chromium.app"