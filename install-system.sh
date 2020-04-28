#!/bin/bash

apt update && apt upgrade -y

# Themes

# Git, CURL
apt install -y git curl

# Apache, PHP, MySQL
apt install -y apache2
apt install -y php
apt install -y mysql-server
apt install -y libapache2-mod-php
apt install -y php-mysql

# Node.js

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --filename=composer
php -r "unlink('composer-setup.php');"
mv composer /usr/bin/composer

# Diff-so-fancy
npm install -g diff-so-fancy

# Docker
apt install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y docker-ce

groupadd docker
usermod -aG docker $USER
systemctl enable docker

# Tools
apt install -y gnome-tweak-tool gimp filezilla

# Zsh
apt install -y zsh
# Oh-my-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Download PowerLevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo '
##############################
# ---------- TODO ---------- #
##############################

* Copy .zshrc, .gitconfig, .gitignore
* Set Zsh as default shell: chsh -s $(which zsh)
* Install
    * Google Chrome
    * PHPStorm, WebStorm
    * Discord
    * PHPMyAdmin
    * Postman
'
