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
)

for PKG1 in "${packages[@]}"; do
  sudo pacman -S --noconfirm "$PKG1"
done

clear