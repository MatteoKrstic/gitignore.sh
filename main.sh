#!/usr/bin/bash

# This script is used to run the main program.
# The scope of the program is to be able to generate every gitignore troughout a terminal command.

# made by Valerio C.(Thebigbot#2222) and Matteo K.(Matteo Krstic#8397)
# version 1.0

### Function ###

check_if_gitignore_exists() {}

add_line_to_gitignore() {}

### Main ###

case "$1" in

"add")
    echo ""
    ;;

"-h" | "--help")
    echo "Usage: gsh [add]"
    echo "add: add a line to the gitignore file"
    echo ""
    ;;

*)
    echo "Hello!"
    ;;

esac
