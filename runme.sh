#!/bin/bash
echo "update apt-get"
sudo apt-get update;
echo "upgrade apt-get"
sudo apt-get upgrade;

sudo apt-get install xmonad dmenu npm git irssi apache2 php vim chromium-browser

git clone https://github.com/mordini/vimfiles ~/vimfiles
ln -s ~/vimfiles ~/.vim && echo "source ~/vimfiles/_vimrc" > ~/.vimrc && mkdir ~/vimfiles/swapfiles && mkdir ~/vimfiles/undofiles && mkdir ~/vimfiles/backups

sudo npm install -g @angular/cli

sudo chgrp -R www-data /var/www/html
sudo find /var/www/html -type d -exec chmod g+rx {} +
sudo find /var/www/html -type f -exec chmod g+r {} +

sudo chown -R $USER /var/www/html/
sudo find /var/www/html -type d -exec chmod u+rwx {} +
sudo find /var/www/html -type f -exec chmod u+rw {} +

sudo find /var/www/html -type d -exec chmod g+s {} +

sudo chmod -R o-rwx /var/www/html/
