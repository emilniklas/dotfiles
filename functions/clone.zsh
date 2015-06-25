function clone() {
    git clone https://github.com/$1 $2
    if [[ -z $2 ]]; then
        split=($(echo $1 | tr "/", " "))
        cd ${split[2]}
    else
        cd $2
    fi
}