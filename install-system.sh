#!/bin/bash

apt update && apt upgrade -y

# Unity Tweak Tool, Gimp
apt install -y unity-tweak-tool cairo-dock nautilus-dropbox nautilus-image-converter gimp

# Numix Icon Theme Circle
add-apt-repository -y ppa:numix/ppa &&
    apt update &&
    apt install -y numix-icon-theme-circle

# Arc-Theme
add-apt-repository -y ppa:noobslab/themes &&
    apt update &&
    apt install -y arc-theme

# Git
apt install -y git

# Google Chrome
sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' &&
    apt update &&
    apt install -y google-chrome-stable

# CURL, HTTPie
apt install -y curl httpie

# Apache, PHP, MySQL
apt install -y apache2 php mysql-server libapache2-mod-php php-mysql phpmyadmin

# Node.js
curl -sL https://deb.nodesource.com/setup_7.x | bash -
apt install -y nodejs

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" &&
    php composer-setup.php --filename=composer &&
    php -r "unlink('composer-setup.php');" &&
    mv composer /usr/bin/composer

# Zsh
apt install -y zsh
# Oh-my-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Set Zsh as default shell
chsh -s $(which zsh)
# Download PowerLevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Diff-so-fancy
npm install -g diff-so-fancy bower gulp-cli vue-cli

# f.lux
add-apt-repository -y ppa:nathan-renniewaldock/flux &&
    apt update &&
    apt install -y fluxgui

# Docker
apt install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y docker-ce

# docker, gitkrakren, sass, virtualhost, atom

# TODO
# - Install powerline font
# - Set shell powerline font
# - Select Arc-Theme Darker and Numix Circle icons in unity-tweak-tool
