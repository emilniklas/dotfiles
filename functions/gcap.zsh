function gcap() {
    git add .
    message="$@"
    git commit -am "${message}"
    git push
}