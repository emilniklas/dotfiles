function mkcd-temp() {
	NAME=$(date +"%y%m%d-%H%M%S")_$1
	mkdir $NAME
	cd $NAME
}