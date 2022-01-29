# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nuts"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#=========================command history==========
HISTFILE=~/.zsh_history
HISTZISE=10000
SAVEHIST=10000
setopt appendhistory

#=========================Alias======================
alias cls="clear"
alias csl="clear"
alias neof="neofetch | lolcat"

alias ll='lsd -lh --group-dirs=first'
alias l='lsd --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

alias b='vi .config/bspwm/bspwmrc'
alias p='vi .config/polybar/polybar'
alias r='vi .config/rofi/themes'

#===========================Function´s=================
function vi(){
    nvim $1
}
function in(){
	sudo dnf in $1
}
function se(){
	dnf se $1
}
function re(){
	sudo dnf re $1
}
function up(){
	sudo dnf up
}
function luz(){
        sudo tlp start |cd /sys/class/backlight/intel_backlight
}
#============================plugins========================
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select
zstyle ':autocomplete:*' min-input 2
#bindkey $key[up] up-line-or-history
#bindkey $key[down] down-line-or-history