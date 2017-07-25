#!/bin/bash

FILE=/usr/share/gnome-shell/gnome-shell-theme.gresource

if [ ! -f $FILE.backup ]; then
  echo "Backing up default theme..."
  sudo cp -v $FILE{,.backup}
fi
