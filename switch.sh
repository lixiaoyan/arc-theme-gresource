#!/bin/bash

./backup.sh

NAME=$1

echo "Switching to theme $NAME..."
sudo cp -v ./build/$NAME/gnome-shell-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource
