function create-production-remote() {
    cwd=$(pwd)

    if [[ -z "$1" ]]; then
        read -p "SSH server [178.62.22.32 (emils-server)]: " input
        if [[ -z $input ]]; then
            server="178.62.22.32"
        else
            server=$input
        fi
    else
        server=$1
    fi

    if [[ -z "$2" ]]; then
        guessRepo=$(basename `git rev-parse --show-toplevel`)
        read -p "Repo name [$guessRepo]: " input
        if [[ -z $input ]]; then
            repo=$guessRepo
        else
            repo=$input
        fi
    else
        repo=$1
    fi

    if [[ -z "$3" ]]; then
        guessRemote=production
        read -p "Remote name [$guessRemote]: " input
        if [[ -z $input ]]; then
            remote=$guessRemote
        else
            remote=$input
        fi
    else
        remote=$1
    fi

    git remote add $remote ssh://root@$server/var/repo/$repo.git

    cd $cwd
}