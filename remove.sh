#!/bin/sh
echo "dunst, fish, hypr, kitty, rofi and waybar"
read -rsp $'are you sure? this script will remove the folders thats stated above and reinstall them (reinstalling only works for arch)\n'
cd ~/.config/
rm -rf dunst/ fish/ hypr/ kitty/ rofi/ waybar/
cd ~
rm wall.png
echo "finished removing: dunst, fish, hypr, kitty, rofi and waybar folders"
echo "---installing packages---"
if [ $(lsb_release -is)  == "Arch" ]
then
sudo pacman -S dunst fish hyprland kitty rofi waybar
else
echo "installing packages is only supported for arch"
fi
