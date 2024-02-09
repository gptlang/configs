#!/bin/bash
cp -r hypr/* ~/.config/hypr/
cp -r waybar/* ~/.config/waybar/
cp -r nvim/* ~/.config/nvim/
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal/profile.dconf
