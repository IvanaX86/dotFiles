PS1='%F{199}%n%f%F{163}@%f%F{196}%m%f %F{202}|%f %F{207}%B%~%b%f %F{201}❯%f '

# vi mode
bindkey -v

# History
HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000

setopt inc_append_history

bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

# Environment Variables
alias ls='ls --color=auto -hv'
alias lsa='ls --color=auto -hva'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -c=auto'
alias floorp='floorp --ozone-platform=wayland'
alias obsidian='obsidian --ozone-platform=wayland'
alias vesktop='vesktop --ozone-platform=wayland'
alias battery_level='echo "$(cat /sys/class/power_supply/BAT0/capacity)%"'
alias s6-rc-user='s6-rc -l /run/${USER}/s6-rc'
alias s6-update-user-rc='/home/${USER}/Projects/system\ config/scripts/s6/s6-update-user-rc.sh'

# Directory Aliases
export S6sysdir='/etc/s6/adminsv/default/contents.d/'

# Wayland Variables
export QT_QPA_PLATFORM=wayland-egl
export ELM_DISPLAY=wl
export SDL_VIDEODRIVER=wayland
export XDG_SESSION_TYPE=wayland

# Firefox
export MOZ_ENABLE_WAYLAND=1

# User Directory Variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# Display Variables
export DISPLAY=':0'

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

#Set Brightness
#exec brightnessctl s 96000

# Annoyances
unsetopt beep

# Completion
autoload -U compinit && compinit
precmd () { print -Pn "\e]2;%-3~\a"; }

# Plugin Loading
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load
