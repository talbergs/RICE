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

alias gst='git status'
alias gc='git commit'
alias gaa='git add --all'
alias glog='git log'
alias g='git'
alias rr='source ~/.bashrc'
function mkcd() {
    mkdir -p $1 && cd $1
}

PS1='[\u@\h \W]\$ '
