# Create PHP server
function serve() {
	ORANGE=$(tput setaf 3)
	RESET=$(tput sgr0)

	echo "Served at ${ORANGE}http://localhost:1337/$RESET"
	if [ -e artisan ]
	then # Is Laravel
		php -S localhost:1337 -t public &>/dev/null
	else
		php -S localhost:1337 &>/dev/null
	fi

}