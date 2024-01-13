#!/bin/sh
echo "dunst, fish, hypr, kitty, rofi and waybar"
read -rsp $'are you sure? this script will remove the folders thats stated above and reinstall them\n'
cd ~/.config2/
rm -rf dunst/ fish/ hypr/ kitty/ rofi/ waybar/
echo "finished removing: dunst, fish, hypr, kitty, rofi and waybar folders"
echo "---installing packages---"
sudo pacman -S dunst fish hyprland kitty rofi waybar
