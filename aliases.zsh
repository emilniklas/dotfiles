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
alias gs="git status"
alias gl="git log"
alias flow="git flow"
alias feature="git flow feature"
alias release="git flow release"
alias co="git checkout"
alias ppl="git pull --all --tags && git push --all --tags"
function commit() {
    git add . &&
    message="$@" &&
    git commit -am "${message}"
}

# OPEN SOURCE COMMUNITY
alias license="curl http://emilpersson.se/license/ > LICENSE"
function readme() {
	name=`basename $(pwd)`
	echo '# '$name > README.md
	echo 'Created readme for project '$name
}

# EDITORS
alias ps="pstorm"
alias ws="wstorm"
alias st="subl"
alias vs="open -a /Applications/Visual\ Studio\ Code.app"
alias ii="open -a /Applications/IntelliJ\ IDEA\ 15.app"

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
