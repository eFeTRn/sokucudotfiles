#!/bin/sh
./p-ins.sh
./fishconf.sh
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
yes | cp -r dunst/ fish/ hypr/ kitty/ rofi/ waybar/ ~/.config2/
# this removes the tar files that's just extracted, to save space
rm -rf dunst/ fish/ hypr/ kitty/ rofi/ waybar/
echo "finished"
