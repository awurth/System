
export ZSH=/home/owen/.oh-my-zsh

POWERLEVEL9K_MODE='awesome-patched'

ZSH_THEME="powerlevel9k/powerlevel9k"

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

POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)

alias ad="sudo apt update"
alias ag="sudo apt upgrade"
alias ai="sudo apt install"
alias gdw="git diff -w"
alias rmr="sudo rm -r"
alias gc="git commit -m"
alias gpt="gp && gp --tags"
