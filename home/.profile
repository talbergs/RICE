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
export TRUEBROWSER="chromium"
export READER="zathura"

export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal
export MANPAGER='less -s -M +Gg'       # verbose prompt + hlsearch

# [ ! -f ~/.shortcuts ] && shortcuts 2>/dev/null
# [ -f ~/.bashrc ] && source ~/.bashrc

# Switch escape and caps and use wal colors if tty:
# sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
# tty | grep tty >/dev/null && wal -Rns
