#!/usr/bin/env bash

echo -e "\e[93mAdd gsh in your system...\e[0m"
touch ~/gsh.sh
CON="$(curl https://raw.githubusercontent.com/MatteoKrstic/gitignore.sh/main/main.sh)"
echo "$CON" >> ~/gsh.sh
echo "alias gsh='sh ~/gsh.sh'" >> ~/.bashrc
alias gsh='sh ~/gsh.sh'
echo -e "\e[92mAdd gsh in your system...\e[0m"