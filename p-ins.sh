#!/bin/sh
read -rsp $'this will install needed packages\n'
sudo pacman -S dunst
sudo pacman -S fish
sudo pacman -S kitty
sudo pacman -S rofi
sudo pacman -S waybar
echo "packages installed"
