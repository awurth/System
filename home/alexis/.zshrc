# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alexis/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(sudo common-aliases debian git colored-man-pages docker docker-compose zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

alias gb="git branch -v"
alias gdw="git diff -w"
alias gc="git commit -m"
alias gpt="gp && gp --tags"
alias gs="git status"
alias gt="git tag"
alias sfs="symfony serve"
alias yw="yarn watch"
alias cld="composer-lock-diff"
alias gdeletegonebranches="git branch -v|grep -F '[disparue]'|cut --field 3 --delimiter ' '|xargs git branch -D"
alias gsth="git stash push -u"
alias grpa="git restore -p"
