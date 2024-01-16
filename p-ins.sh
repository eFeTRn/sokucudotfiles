#!/bin/sh
read -rsp $'this will install needed packages\n'
sudo pacman -S --needed dunst fish kitty rofi waybar
echo "script finished"
