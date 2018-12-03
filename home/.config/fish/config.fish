if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set -U __done_exclude '^(ranger|man|open|vim|vi|nvim|git|svn)' 

alias gst 'git status'
alias gp 'git push'
alias gr 'git remote'
alias g 'git'
alias gco 'git checkout'
alias gc 'git commit'
alias gaa 'git add --all'
alias glog 'git log --graph --oneline --decorate'
