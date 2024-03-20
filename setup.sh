#!/bin/bash
echo "sorry but you gotta put the sudo password in to make sure you have all the dependencies."; 
echo "This will also overwrite your vimrc but will put the old one in a backup in the same directory.";
# This will setup everything needed for both vim and tmux. 
sudo apt install wget curl vim nmap net-tools git;
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ~/.vimrc ~/.vimrc.old;
cp ./.vimrc ~/.vimrc;
cp ./.tmux.conf ~/.tmux.conf;
echo "There are next steps now to get eveything in working order. \n First you must open tmux and do C-b + (shift + i) to install the plugins necessary for tmux.\n"
echo "Then copy your theme and config files to the .config/tmux-powerline directory (themes goes in a /themes/ subdir and config.sh goes in the toplevel)"

