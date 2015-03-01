# Initialize dependencies
function production-init() {
    ORANGE=$(tput setaf 3)
    RESET=$(tput sgr0)

    if [ -e composer.json ]
    then # Uses composer
        echo $ORANGE"Installing Composer dependencies"$RESET
        composer install --no-dev &>/dev/null
    fi
    
    if [ -e package.json ]
    then # Uses npm
        echo $ORANGE"Installing NPM dependencies"$RESET
        npm install --production &>/dev/null
    fi
    
    if [ -e bower.json ]
    then # Uses composer
        echo $ORANGE"Installing Bower dependencies"$RESET
        bower install --production --allow-root &>/dev/null
    fi


}