#!/bin/bash

cp -r ~/.config/hypr/* ./hypr/
cp -r ~/.config/nvim/* ./nvim/
cp -r ~/.config/waybar/* ./waybar/

dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal/profile.dconf
