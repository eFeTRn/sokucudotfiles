#!/bin/sh
./f-shell.sh
./p-ins.sh
./fishconf.sh
./gamemode-group-add.sh
tar xzf hyprconfs.tar.gz
                            #cannot figure out how to supply multiple folders, it just says too many arguments, fuck
                            # so i needed to come up with a better idea
                            # but i'm still keeping this maybe someday i'll figure this out
                            # -------------------------------------------------------------
                            #if [ -e dunst/ fish/ hypr/ kitty/ rofi/ waybar/ ]; then
                            #rm -rf dunst/ fish/ hypr/ kitty/ rofi/ waybar/
                            #mkdir dunst/ fish/ hypr/ kitty/ rofi/ waybar/
                            #fi
                            # -------------------------------------------------------------
yes | cp -r dunst/ fish/ hypr/ kitty/ rofi/ waybar/ ~/.config/
cp .bashrc ~
# this removes the tar files that's just extracted, to save space
rm -rf dunst/ fish/ hypr/ kitty/ rofi/ waybar/ .bashrc
echo "finished"
