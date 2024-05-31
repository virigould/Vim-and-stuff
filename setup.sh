#!/bin/bash
echo "sorry but you gotta put the sudo password in to make sure you have all the dependencies."; 
echo "This will also overwrite your vimrc but will put the old one in a backup in the same directory.";
# This will setup everything needed for both vim and tmux. 
sudo apt install wget curl vim nvim nmap net-tools git;
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ~/.vimrc ~/.vimrc.old;
cp ./.vimrc ~/.vimrc;
cp ./.tmux.conf ~/.tmux.conf;
tmux new-session '~/.tmux/plugins/tpm/bin/install_plugins; sleep 5; exit'
mkdir ~/.config/tmux-powerline/themes
cp ./my-theme.sh ~/.config/tmux-powerline/themes/
cp ./config.sh ~/.config/tmux-powerline/

mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git


echo "Alright so should just need to start nvim and decide if you want the default config or the one in the dir."
