#!/bin/bash
echo "sorry but you gotta put the sudo password in to make sure you have all the dependencies. \nThis will also overwrite your vimrc but will put the old one in a backup in the same directory.";
sudo apt install wget curl vim;
cp ~/.vimrc ~/./vimrc.old
cp ./.vimrc ~/

