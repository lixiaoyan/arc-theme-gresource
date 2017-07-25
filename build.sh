#!/bin/bash

if [ ! -d /usr/share/themes/Arc ] || [ ! -d /usr/share/themes/Arc-Dark ]; then
  echo "Arc Theme not found, you should install it first."
  exit 1
fi

rm -rf ./build
mkdir ./build

./build-theme.sh Arc /usr/share/themes/Arc/gnome-shell
./build-theme.sh Arc-Dark /usr/share/themes/Arc-Dark/gnome-shell
