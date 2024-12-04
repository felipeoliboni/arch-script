#!/bin/bash

packages=( 
  firefox
  docker
  kubectl
  yay
  alacritty
  discord
  visual-studio-code-bin
  github-cli
  btop
  filezilla
)

packages_yay=(
    google-chrome
    anydesk-bin
    mysql-workbench
    chromium
)

for PKG1 in "${packages[@]}"; do
  sudo pacman -S --noconfirm "$PKG1"
done

for PKG1 in "${packages_yay[@]}"; do
  yay -S --noconfirm "$PKG1"
done

clear