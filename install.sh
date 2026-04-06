#!/bin/bash

echo "Installing required packages..."
sudo pacman -S --needed - < packages.txt

echo "Copying configs..."
mkdir -p ~/.config

cp -r hypr ~/.config/
cp -r wofi ~/.config/
cp -r kitty ~/.config/
cp -r dunst ~/.config/

echo "Done! Restart Hyprland."
