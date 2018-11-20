if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set -U __done_exclude '^(sudo|ranger|man|open|vim|vi|nvim|git|svn)' 
set -U __done_min_cmd_duration 120000
