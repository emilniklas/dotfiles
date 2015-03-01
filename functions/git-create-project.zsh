function git-create-project() {

	ORANGE=$(tput setaf 3)
	RESET=$(tput sgr0)

	echo $ORANGE"Cloning "$1$RESET
	git clone https://github.com/$1.git $2 &>/dev/null

	cd $2
	echo $ORANGE"Removing local repository"$RESET
	rrm .git
	
	if [ -e composer.json ]
	then # Uses composer
		echo $ORANGE"Installing Composer dependencies"$RESET
		composer install &>/dev/null
	fi
	
	if [ -e package.json ]
	then # Uses npm
		echo $ORANGE"Installing NPM dependencies"$RESET
		npm install &>/dev/null
	fi
	
	if [ -e bower.json ]
	then # Uses composer
		echo $ORANGE"Installing Bower dependencies"$RESET
		bower install &>/dev/null
	fi
}