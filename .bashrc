# Starship & Zoxide
eval "$(starship init bash)"
eval "$(zoxide init bash)"

# Path Environment
export PATH="$HOME/.cargo/bin:$PATH"

# Var Environment
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"
export STARSHIP_CACHE="$TMPDIR/starship"

# Aliases
alias l="clear"
alias la="ls -A"
alias cd="z"
