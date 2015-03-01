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
alias gc="git commit"
alias gp="git push"
alias gu="git up"
alias gpub="gpublish"
alias gca="git commit -am"

# EDITORS
ps="pstorm"
st="subl"
alias ps=$ps
alias st=$st

# SHORTCUTS
alias hosts='subl /etc/hosts'

# LARAVEL
alias art="php artisan"
alias m:c="php artisan make:controller"
alias seed="php artisan db:seed"
alias mig="php artisan migrate"