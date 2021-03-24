# Set environment variables
export PATH=$HOME/.bin:$PATH
export LESSHISTFILE=-
export MESA_GLSL_CACHE_DISABLE=true
export EDITOR=nvim
export _JAVA_AWT_WM_NONREPARENTING=1

# Set XDG user directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_RUNTIME_DIR=/tmp/$USER-runtime

# FZF
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '*.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

#export HTTP_PROXY=https://14.139.107.211:3128/
#export HTTPS_PROXY=$HTTP_PROXY
#export FTP_PROXY=$HTTP_PROXY
#export RSYNC_PROXY=$HTTP_PROXY

# Create XDG_RUNTIME_DIR if not exist
mkdir -pm 0700 $XDG_RUNTIME_DIR

# Source .bashrc if exists
. $HOME/.bashrc 2> /dev/null

# Start X if on tty1
[[ -z $DISPLAY && $(tty) == /dev/tty1 ]] && startx
