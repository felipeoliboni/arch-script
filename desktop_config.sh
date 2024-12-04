#!/bin/bash

echo "Installing hyprland desktop configuration"

#Clone the repository with Hyprland
cd /home/$USER
git clone --depth=1 https://github.com/JaKooLit/Arch-Hyprland.git ~/Arch-Hyprland
cd ~/Arch-Hyprland
chmod +x install.sh
./install.sh

#Clone the repository with the dotfiles
cd /home/$USER
git clone https://github.com/felipeoliboni/waybar-configs.git ~/.config/waybar
git clone https://github.com/felipeoliboni/hyprland-config.git ~/.config/hypr
git clone https://github.com/felipeoliboni/alacritty-config.git
cd alacritty-config
mv alacritty.toml $HOME/.alacritty.toml
cd ..

#Clear unnecessary files
cd /home/$USER
sudo rm -rf waybar-configs
sudo rm -rf hyprland-config
sudo rm -rf alacritty-config
sudo rm -rf Arch-Hyprland