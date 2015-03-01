function new-laravel() {
    ORANGE=$(tput setaf 3)
    RESET=$(tput sgr0)

    if [[ -z "$1" ]]; then
        read -p "In what folder: [.] " input
        if [[ -z $input ]]; then
            folder=.
        else
            folder=$input
        fi
    else
        folder=$1
    fi

    mkdir $folder &>/dev/null

    cd $folder

    defaultName=$(basename $(pwd))

    if [[ -z "$2" ]]; then
        read -p "Name of the app: [$defaultName] " input
        if [[ -z $input ]]; then
            title=$defaultName
        else
            title=$input
        fi
    else
        title=$2
    fi

    git-create-project emilniklas/new-laravel .
    
    echo $ORANGE"Configuring environment"
    mv .env.example .env &>/dev/null

    mv .idea.example .idea
    find .idea -name "*.xml" -print0 | xargs -0 sed -i '' -e "s/NEW_LARAVEL/$title/g"
    find .idea -name ".name" -print0 | xargs -0 sed -i '' -e "s/NEW_LARAVEL/$title/g"
    mv .idea/NEW_LARAVEL.iml .idea/$title.iml

    echo $ORANGE"Naming application"$RESET
    php artisan app:name $title &>/dev/null
    
    echo $ORANGE"Creating database"$RESET
    touch storage/database.sqlite &>/dev/null
    
    echo $ORANGE"Migrating database"$RESET
    php artisan migrate &>/dev/null
    
    echo $ORANGE"Seeding database"$RESET
    php artisan db:seed &>/dev/null

    echo $ORANGE"Initializing Git"$RESET
    git init &>/dev/null
    git add . &>/dev/null
    git commit -m "Initial commit" &>/dev/null

    echo $ORANGE"Building assets"$RESET
    gulp amour &>/dev/null

    echo
    echo
    echo
    echo
    echo "--"
    echo $ORANGE$title$RESET" created in "$ORANGE$(pwd)$RESET
    echo "--"
    echo
    echo "To get started, open three prompts, and in two of them, run:"
    echo
    echo "php artisan serve"
    echo "gulp"

}