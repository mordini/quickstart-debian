#!/bin/bash
echo "update apt-get"
sudo apt-get update;
echo "upgrade apt-get"
sudo apt-get upgrade;

sudo apt-get install xmonad dmenu npm git irssi apache2 php vim

git clone https://github.com/mordini/vimfiles ~/vimfiles
ln -s ~/vimfiles ~/.vim && echo "source ~/vimfiles/_vimrc" > ~/.vimrc && mkdir ~/vimfiles/swapfiles && mkdir ~/vimfiles/undofiles && mkdir ~/vimfiles/backups

sudo npm install -g @angular/cli
