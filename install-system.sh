#!/bin/bash

apt update && apt upgrade -y

# Unity Tweak Tool
apt install -y unity-tweak-tool

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
apt install -y apache2 php mariadb-server libapache2-mod-php php-mysql

# cairo-dock, php, apache, mariadb, zsh, oh-my-zsh, docker, dropbox, gitkrakren, composer, nodejs, sass, arc-theme


# Node: vuejs, bower, gulp, electron
