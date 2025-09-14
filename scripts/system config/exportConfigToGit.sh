#!/usr/bin/env bash

destinationDir=~/Projects/system\ config/dotFiles/configs

# pipewire
cp -r ~/.config/pipewire "$destinationDir"

# nvim
cp -r ~/.config/nvim/colors "$destinationDir"/nvim/
cp -r ~/.config/nvim/scripts "$destinationDir"/nvim/
cp -r ~/.config/nvim/themes "$destinationDir"/nvim/
cp -r ~/.config/nvim/init.lua "$destinationDir"/nvim/

#niri
cp -r ~/.config/niri "$destinationDir"
