function gpublish {
    if [[ -z "$1" ]]; then
        remoteName=production
    else
        remoteName=$1
    fi
    git push $remoteName master
}