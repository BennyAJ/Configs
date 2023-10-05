# Adds color to man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# Alias ls to always use colors
alias ls="ls --color=always"

# Create a function to open man pages in vim
vman() { nvim <(man $1); }

# Set everything to use vim
export SUDO_EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

# Shorten distrobox command until I set up a better system at least
alias de="distrobox enter"
