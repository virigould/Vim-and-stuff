#!/bin/bash
echo "sorry but you gotta put the sudo password in to make sure you have all the dependencies."; 
echo "This will also overwrite your vimrc but will put the old one in a backup in the same directory.";
# This will setup everything needed for both vim and tmux. 
sudo apt install wget curl vim nmap net-tools git;
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ~/.vimrc ~/.vimrc.old;
cp ./.vimrc ~/.vimrc;
cp ./.tmux.conf ~/.tmux.conf;
