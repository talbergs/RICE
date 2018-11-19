#!/bin/bash
(ping -c 1 8.8.8.8 &>/dev/null && exit 0 || echo "No internet." && exit 1) || exit
PROGS=$PWD/progs.csv
DOTS=$PWD/home
green() {
  echo "$(tput setaf 2)$1$(tput sgr0)";
}
pop() {
  rm -rf $HOME/$1
  ln -sf $DOTS/$1 $HOME/$1
}

green "yay check"
(
  which yay && exit
  which git || pacman -S git --noconfirm
  git clone http://aur.archlinux.org/yay
  cd yay
  makepkg -scir --needed --noconfirm
  rm -rf ../yay
) &>/dev/null

green "dotpaste/symlinking"
mkdir -p ~/.config/{zathura,mpd,fish,i3,i3blocks,ranger,mpv,termite,nvim,compton,dunst}
pop .config/mpv/input.conf
pop .config/mpd/mpd.conf
pop .config/ranger/commands.py
pop .config/ranger/scope.sh
pop .config/ranger/rc.conf
pop .config/zathura/zathurarc
pop .config/fish/fishfile
pop .config/fish/config.fish
pop .config/i3/config
pop .config/i3blocks/config
pop .config/dunst/dunstrc
pop .config/nvim/init.vim
pop .config/nvim/colors
pop .config/nvim/ftplugin
pop .config/termite/config
pop .scripts
pop .bashrc
pop .profile
pop .xinitrc

ln -sf $HOME/.profile $HOME/.xprofile
ln -sf $HOME/.profile $HOME/.bash_profile

echo "/usr/bin/feh --bg-fill '$PWD/tokyo.jpg'" > $HOME/.fehbg
chmod +x $HOME/.fehbg

green "programm install"
n=$(wc -l < $PROGS)
while IFS=, read -r pack comment; do
  n=$((n-1))
  echo "$n $(tput bold)$pack $(tput sgr0) $comment"
  yay -S $pack --noconfirm --useask --needed &>/dev/null
done < $PROGS;

green "vim-plug"
curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -c 'qa' &>/dev/null
sleep 1
nvim -c 'PlugInstall' -c 'qa' &>/dev/null
sleep 1
nvim -c 'UpdateRemotePlugins' -c 'qa' &>/dev/null
sleep 1

green "complete!"
