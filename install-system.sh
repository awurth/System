#!/bin/bash

apt update && apt upgrade -y

# Unity Tweak Tool, Gimp
apt install -y unity-tweak-tool gimp

# Numix Icon Theme Circle
add-apt-repository -y ppa:numix/ppa &&
    apt update &&
    apt install -y numix-icon-theme-circle

# Git
apt install -y git

# Google Chrome
sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' &&
    apt update &&
    apt install -y google-chrome-stable

# CURL, HTTPie
apt install -y curl httpie

# Apache, PHP, MariaDB
apt install -y apache2 php mariadb-server libapache2-mod-php php-mysql phpmyadmin

# Zsh
apt install zsh
# Oh-my-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Set Zsh as default shell
chsh -s $(which zsh)
# Download PowerLevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# cairo-dock, docker, dropbox, gitkrakren, composer, nodejs, sass, arc-theme, diff-so-fancy, virtualhost, atom

# Node: vuejs, bower, gulp, electron

# ToDo
# Set shell powerline font
