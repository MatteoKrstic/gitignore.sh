#!/usr/bin/env bash

touch ~/gsh.sh
CON="$(curl https://raw.githubusercontent.com/MatteoKrstic/gitignore.sh/main/main.sh)"
echo "$CON" >> ~/gsh.sh
echo "alias gsh='sh ~/gsh.sh'" >> ~/.bashrc