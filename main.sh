#!/usr/bin/env bash

# This script is used to run the main program.
# The scope of the program is to be able to generate every gitignore troughout a terminal command.

# made by Valerio C.(Thebigbot#2222) and Matteo K.(Matteo Krstic#8397)
# version 1.0

### Function ###

build_gitignore() {
    touch .gitignore
}

add_line_to_gitignore() {
    CON="$(curl https://raw.githubusercontent.com/github/gitignore/main/$1.gitignore)"
    if [ $CON === "404: Not Found" ]; then
        echo "\e[91mThe gitignore "$1" doesn't exist!\e[0m"
    else
        echo "$CON" >>.gitignore
        echo "\e[92mThe gitignore "$1" has been added!\e[0m"
    fi
}

### Main ###

case "$1" in

"add")
    build_gitignore
    echo "\e[93mSearching "$2" in the github gitignore registry....\e[0m"
    echo "\e[93mGET -> https://raw.githubusercontent.com/github/gitignore/main/$2.gitignore\e[0m"
    add_line_to_gitignore "$2"
    ;;

"-h" | "--help")
    echo "Usage: gsh [add]"
    echo "add: add a line to the gitignore file"
    echo ""
    ;;

"create-custom" | "cc")
    echo "What is the name of the gitignore file?"
    read -r name
    CON="$(cat .gitignore)"
    touch ~/.gsh/custom/$name.gitignore
    echo "$CON" >> ~/.gsh/custom/$name.gitignore
    echo "\e[92mThe gitignore "$name" has been created!\e[0m"
    ;;

*)
    echo "\e[32mWelcome to gsh, the best .gitignore generator\e[0m\n"
    read -p "Create .gitignore file? [y/n] " yn
    case $yn in
    [Yy]*)
        echo "\e[93mCreating .gitignore file...\e[0m"
        build_gitignore
        echo "\e[92mCreated .gitignore file!\e[0m"
        ;;
    [Nn]*)
        echo "\e[93mOkay, bye\e[0m"
        ;;
    *)
        echo "\e[93mCreating .gitignore file...\e[0m"
        build_gitignore
        echo "\e[92mCreated .gitignore file!\e[0m"
        ;;
    esac
    ;;

esac
