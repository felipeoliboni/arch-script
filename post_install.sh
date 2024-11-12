#!/bin/bash

echo "Setting up the environment packages"

#Update the system
sudo -S pacman -Syuu --noconfirm

#Install the necessary packages
sudo pacman -S --noconfirm --needed base-devel git





