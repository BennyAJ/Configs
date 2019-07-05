# Removes GUI prompt for SSH Askpass
unset SSH_ASKPASS

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

# Because I'm sick of typing that name
alias music="ncmpcpp"

# Set everything to use vim
export SUDO_EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

# Add a scripts directory to home
export PATH=$PATH:/home/benny/.scripts

# Add ruby gems directory to path
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Settings to make Matlab functional
export J2D_D3D=false

# Fix Java Programs Displaying
export _JAVA_AWT_WM_NONREPARENTING=1

export SOAR_HOME=/home/benny/Programming/SoarAuto/soar/out
export LCM_INSTALL_DIR=/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib
