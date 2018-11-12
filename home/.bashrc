#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa -lah'
alias cbash='vim ~/.bashrc'
alias cprogs='vim ~/RICE/progs.csv'
alias ci3='vim ~/.config/i3/config'
alias cblocks='vim ~/.config/i3blocks/config'

PS1='[\u@\h \W]\$ '
