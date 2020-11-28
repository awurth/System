# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alexis/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(sudo common-aliases debian git composer web-search npm yarn symfony2 extract colored-man-pages)
source $ZSH/oh-my-zsh.sh

# User configuration

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

alias gdw="git diff -w"
alias rmr="sudo rm -r"
alias gc="git commit -m"
alias gpt="gp && gp --tags"
alias gs="git status"
alias gt="git tag"
alias sfs="symfony serve"
alias yw="yarn watch"
alias cld="composer-lock-diff"

alias sfddc="sf doctrine:schema:update --dump-sql --complete"
alias sfdfc="sf doctrine:schema:update --force --complete"

alias php.info='php -i'
alias enphp7.1='sudo a2dismod php7.2 && sudo a2dismod php7.3 && sudo a2dismod php7.4 && sudo a2dismod php8.0 && sudo a2enmod php7.1 && sudo update-alternatives --set php /usr/bin/php7.1 && sudo service apache2 restart'
alias enphp7.2='sudo a2dismod php7.1 && sudo a2dismod php7.3 && sudo a2dismod php7.4 && sudo a2dismod php8.0 && sudo a2enmod php7.2 && sudo update-alternatives --set php /usr/bin/php7.2 && sudo service apache2 restart'
alias enphp7.3='sudo a2dismod php7.1 && sudo a2dismod php7.2 && sudo a2dismod php7.4 && sudo a2dismod php8.0 && sudo a2enmod php7.3 && sudo update-alternatives --set php /usr/bin/php7.3 && sudo service apache2 restart'
alias enphp7.4='sudo a2dismod php7.1 && sudo a2dismod php7.2 && sudo a2dismod php7.3 && sudo a2dismod php8.0 && sudo a2enmod php7.4 && sudo update-alternatives --set php /usr/bin/php7.4 && sudo service apache2 restart'
alias enphp8.0='sudo a2dismod php7.1 && sudo a2dismod php7.2 && sudo a2dismod php7.3 && sudo a2dismod php7.4 && sudo a2enmod php8.0 && sudo update-alternatives --set php /usr/bin/php8.0 && sudo service apache2 restart'
