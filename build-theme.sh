#!/bin/bash

NAME=$1
SOURCE=$2
DEST=./build/$NAME

echo "Building theme $NAME"

rm -rf "$DEST"
cp -r "$SOURCE" "$DEST"

FILES=$(find "$DEST" -type f -printf "%P\n" | xargs -i echo "    <file>{}</file>")

cat <<EOF >"$DEST/gnome-shell-theme.gresource.xml"
<?xml version="1.0" encoding="UTF-8"?>
<gresources>
  <gresource prefix="/org/gnome/shell/theme">
$FILES
  </gresource>
</gresources>
EOF

(
  cd "$DEST"
  glib-compile-resources gnome-shell-theme.gresource.xml
)
echo "-> $DEST/gnome-shell-theme.gresource"
