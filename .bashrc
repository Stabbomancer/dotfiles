
alias ls="ls --color=auto"
alias kaboom="shutdown now"
alias rebot="reboot"
alias nv="nvim"
. "$HOME/.local/bin/env"

function currsem() {
    cd "$HOME/Documents/College_Stuff/Classes/Spring2026/$1" || return
}

function cltr() {
    rm -rf ~/.local/share/Trash/files/*
}

function workCommit() {
    read -p ":: Commit all new work to GitHub? [Y/n] " opt
    
    case $opt in
        [yY]* ) 
            # If they type y or Y, break out of the case and continue
            ;;
        [nN]* ) 
            # If they type n or N, exit the script completely
            return 1
            ;;
        * ) 
            # Catch invalid input and stop the function
            echo ":: Invalid input, aborting."
            return
            ;;
    esac
    
    if [ "$#" -eq 0 ]; then
        echo ":: No commit message, aborting."
	return 1
    fi

    dir=$PWD 
    cd "$HOME/Documents/College_Stuff"
    git pull
    git add .
    git commit -m "$1"
    git push
    cd "$dir"
}

function workStatus() {
    dir=$PWD
    cd "$HOME/Documents/College_Stuff"
    git status
    cd "$dir"
}

function workSync() {
    dir=$PWD
    cd "$HOME/Documents/College_Stuff"
    git pull
    cd "$dir"
}
