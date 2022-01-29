# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#aliases
alias cls='clear'
alias csl='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias vi='nvim'

#lsd 
alias ll='lsd -lh --group-dirs=first'
alias l='lsd -l --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

#powerline promt
if [ -f /usr/share/powerline/bash/powerline.sh ];
         then
             	source /usr/share/powerline/bash/powerline.sh
fi