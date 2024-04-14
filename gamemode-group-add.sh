#!/bin/sh

if [ "$EUID" -eq 0 ]; then
    echo "### Good to see you as root###"
else
    echo "### Nope. not a chance. I'm not listening some ordinary user like you! (run me as root) ###"
    exit 1
fi

if pgrep "gamemoded" > /dev/null; then
    echo "--- I killed gamemode in cold blood!"
    pkill "gamemoded"
    usermod -aG gamemode $USER
    echo "--- Added you in the gamemode group."
else
    usermod -aG gamemode $USER
    echo "--- Looks like gamemode isn't alive."
    echo "--- I added you in the gamemode group!"
fi
