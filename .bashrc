# Return if not running interactively
[[ $- != *i* ]] && return

# Source fzf
. /usr/share/doc/fzf/key-bindings.bash
. /usr/share/doc/fzf/completion.bash

# Set aliases
alias ls='ls --almost-all --color=auto'
alias vi='nvim'
alias reboot='sudo reboot'
alias dotfiles='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

# Enable forward i-search via pressing ctrl-s
stty -ixon

# Set shell prompt format
# Format: '{working_directory} $ '
PS1='\[\033[38;5;10m\][\w]\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;12m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]'
