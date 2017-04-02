#!/bin/bash

apt update && apt upgrade -y

# Themes
add-apt-repository -y ppa:numix/ppa
add-apt-repository -y ppa:noobslab/themes
apt update
apt install -y numix-icon-theme-circle arc-theme

# Git, CURL, HTTPie
apt install -y git curl httpie

# Apache, PHP, MySQL
apt install -y apache2
apt install -y php
apt install -y mysql-server
apt install -y libapache2-mod-php
apt install -y php-mysql

# Node.js
curl -sL https://deb.nodesource.com/setup_7.x | bash -
apt install -y nodejs

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --filename=composer
php -r "unlink('composer-setup.php');"
mv composer /usr/bin/composer

# Diff-so-fancy
npm install -g diff-so-fancy bower gulp-cli vue-cli

# f.lux
add-apt-repository -y ppa:nathan-renniewaldock/flux
apt update
apt install -y fluxgui

# Docker
apt install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y docker-ce

groupadd docker
usermod -aG docker $USER
systemctl enable docker

# Unity Tweak Tool, Gimp
apt install -y unity-tweak-tool cairo-dock nautilus-dropbox nautilus-image-converter gcolor2 gimp filezilla

# Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt update
apt install spotify-client

# GitKraken
curl -L https://release.gitkraken.com/linux/gitkraken-amd64.deb -o gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

# Atom
curl -L https://atom.io/download/deb -o atom-amd64.deb
dpkg -i atom-amd64.deb
rm atom-amd64.deb

# Zsh
apt install -y zsh
# Oh-my-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Download PowerLevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Set Zsh as default shell
chsh -s $(which zsh)

echo '
##############################
# ---------- TODO ---------- #
##############################

* Install powerline font
* Set shell powerline font
* Select Arc-Theme Darker and Numix Circle icons in unity-tweak-tool
* Copy .zshrc, .gitconfig, .gitignore
* Run cairo-dock on boot
* Install
    * Vivaldi, Google Chrome
    * PHPStorm, WebStorm
    * Discord
    * PHPMyAdmin
    * Postman
'
