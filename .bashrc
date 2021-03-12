# Return if not running interactively
[[ $- != *i* ]] && return

# Set aliases
alias ls='ls --almost-all --color=auto'
alias vi='nvim'
alias reboot='sudo reboot'

# Enable forward i-search via pressing ctrl-s
stty -ixon

# Set shell prompt format
# Format: '{working_directory} $ '
PS1='\[\033[38;5;10m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;12m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]'
