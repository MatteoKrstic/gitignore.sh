#!/usr/bin/env bash

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
    elif [[ "$OSTYPE" == "cygwin" ]]; then
        echo "POSIX compatibility layer and Linux environment emulation for Windows"
    elif [[ "$OSTYPE" == "msys" ]]; then
        echo "lightweight shell and GNU utilities compiled for Windows (part of MinGW)"
    elif [[ "$OSTYPE" == "win32" ]]; then
        Win32
    elif [[ "$OSTYPE" == "freebsd"* ]]; then
        echo "FreeBSD"
    else
        echo "Unknown operating system"
    fi
}

OSCheck