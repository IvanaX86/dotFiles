#!/usr/bin/env bash

dotLocalDir=~/.local/share
destinationDir=~/Projects/system\ config/dotFiles/desktop\ files

cp -r $dotLocalDir/applications/floorp.desktop "$destinationDir"/applications/
cp -r $dotLocalDir/applications/steam.desktop "$destinationDir"/applications/
cp -r $dotLocalDir/wayland-sessions/niri.desktop "$destinationDir"/wayland-sessions/
