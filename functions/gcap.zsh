function gcap() {
    git add .
    message="$@"
    git commit -m "${message}"
    git push
}