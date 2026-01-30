# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -l"
alias l="clear"
alias xstart="termux-x11 :1 -xstartup i3"
alias hx="helix"

test -L "$HOME/.cache" || ln -s /tmp $HOME/.cache

export SHELL="/usr/bin/bash"

export PATH="$PATH:$HOME/.local/bin"

export DISPLAY=:1
export PULSE_SERVER="127.0.0.1"
export PYTHON_HISTORY="$HOME/.cache/python_history"

PS1="[\u@\h \W]\$ "
