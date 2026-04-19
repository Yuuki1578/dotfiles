# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -l"
alias l="clear"

test -L "$HOME/.cache" || ln -s /tmp $HOME/.cache
export PYTHON_HISTORY="$HOME/.cache/python_history"

CLR_BLACK="\[\e[1;30m\]"
CLR_GREEN="\[\e[1;32m\]"
CLR_CYAN="\[\e[1;36m\]"
CLR_BLUE="\[\e[1;34m\]"
CLR_WHITE="\[\e[0m\]"

PS1="$CLR_BLACK[$CLR_GREEN\u$CLR_WHITE@$CLR_CYAN\h $CLR_BLUE\W$CLR_BLACK]$CLR_WHITE\$ "
