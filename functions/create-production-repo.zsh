function create-production-repo() {
    cwd=$(pwd)

    if [[ -z "$1" ]]; then
        read -p "Name: " input
        if [[ -z $input ]]; then
            return
        fi
        name=$input
    else
        name=$1
    fi
    if [[ $name == *.* ]]; then
        IN=$name
        OIFS=$IFS
        IFS='.'
        split=($IN)
        repo=${split[0]}.git
        IFS=$OIFS
    else
        repo=$name.git
    fi

    mkdir /var/www/$name
    mkdir /var/repo/$repo

    cd /var/repo/$repo
    git init --bare &>/dev/null
    cd hooks
    echo -e "#!/bin/sh\ngit --work-tree=/var/www/$name --git-dir=/var/repo/$repo checkout -f" > post-receive

    chmod +x post-receive

    cd $cwd
}