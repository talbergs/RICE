#!/bin/sh
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
if [[ -d $HOME/Dropbox/bin ]]; then
    export PATH="$PATH:$HOME/Dropbox/bin"
fi
export LANG=en_US.UTF-8
export EDITOR="nvim"
export TERMINAL="termite"
#export TERMINAL="xst"
export BROWSER="linkhandler"
export TRUEBROWSER="google-chrome-stable"
export READER="zathura"

# [ ! -f ~/.shortcuts ] && shortcuts 2>/dev/null
# [ -f ~/.bashrc ] && source ~/.bashrc

# Switch escape and caps and use wal colors if tty:
# sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
# tty | grep tty >/dev/null && wal -Rns
