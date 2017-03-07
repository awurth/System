
  export ZSH=/home/owen/.oh-my-zsh

ZSH_THEME="agnoster"

DEFAULT_USER="owen"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(sudo common-aliases debian git composer httpie web-search geeknote vagrant npm bower)

source $ZSH/oh-my-zsh.sh

alias gdw="git diff -w"
alias rmr="sudo rm -r"
alias scssw="scss --watch"
alias gc="git commit -m"
alias gpt="gp && gp --tags"