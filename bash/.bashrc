export PATH="$HOME/.local/bin:$PATH"

alias l="clear"
alias la="ls -A"
alias z="cd"
alias grep="grep --color=always"
alias rg="grep"
alias du="du -ha"

run() {
	if [[ $1 == "" ]]
	then
		return
	else
		$(pwd)/$1
	fi
}

clone() {
  if [[ $1 == "" ]]
  then
    return
  else
    git clone https://github.com/$1
  fi
}

eval "$(fzf --bash)"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
	--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7
	--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff
	--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff 
	--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'
