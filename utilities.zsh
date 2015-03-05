# rupa/z
if [[ ! -a /usr/local/bin/z  ]]; then
    
	echo "Installing rupa/z"

    wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O /usr/local/bin/z &>/dev/null
    chmod +x /usr/local/bin/z
fi
source /usr/local/bin/z

