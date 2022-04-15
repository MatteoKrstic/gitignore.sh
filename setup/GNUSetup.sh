#!/usr/bin/env bash

echo "\e[93mAdd gsh in your system...\e[0m"
mkdir ~/.gsh
touch ~/.gsh/gsh.sh
touch ~/.gsh/gsh_err.log
CON="$(curl https://raw.githubusercontent.com/MatteoKrstic/gitignore.sh/main/main.sh)"
echo "$CON" >> ~/.gsh/gsh.sh
echo "alias gsh='sh ~/.gsh/gsh.sh'" >> ~/.bashrc
alias gsh='sh ~/.gsh/gsh.sh'
echo "\e[92mAdded gsh in your system!\e[0m"