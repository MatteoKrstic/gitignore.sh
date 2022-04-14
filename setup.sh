#!/usr/bin/bash

# This script is used to install the gsh program.

# alias run = "./main.sh"

# touch .bashrc


Win32() {
    echo "on windows"
}

Linux() {
    echo "on Linux"
}

OSX() {
    echo "on OSX"
}


OSCheck() {
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        Linux
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        OSX
    elif [[ "$OSTYPE" == "win32" ]]; then
        Win32
    else
        echo "Unknown, please use a normal os or install this manually"
    fi
}