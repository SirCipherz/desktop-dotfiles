#!/bin/bash

# .config
cp -vr ~/.config/bspwm ./.config/
cp -vr ~/.config/polybar ./.config/
cp -vr ~/.config/sxhkd ./.config/
cp -vr ~/.config/mpv/script* ./.config/mpv
cp -vr ~/.config/dunst ./.config/
cp -vr ~/.config/zathura/ ./.config/
cp -vr ~/.config/kitty ./.config/
cp -vr ~/.config/alacritty ./.config/
cp -vr ~/.config/ranger ./.config/
cp -vr ~/.config/rofi ./.config/
cp -vr ~/.config/cantata/ ./.config/

# xdg
cp -v ~/.config/user-dirs.dirs ./.config/

# others
cp -v ~/.zshrc ./
