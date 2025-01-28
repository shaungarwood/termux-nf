#!/usr/bin/env bash

PREFIX='/data/data/com.termux/files/usr'
DEST="$PREFIX/bin"

GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

# add the -s or --silent flag to suppress output
SILENT=$([[ "$1" == "-s" ]] || [[ "$1" == "--silent" ]] && echo true || echo false)

$SILENT || echo "Installing termux-nf..."

mkdir -p "$DEST"
rm -f "$GETNFLOC"

if $SILENT; then
    curl -fsSL# https://raw.githubusercontent.com/arnavgr/termux-nf/main/getnf --output getnftemp
    curl -fsSL# https://raw.githubusercontent.com/arnavgr/termux-nf/main/applynf --output applynftemp
else
    curl -fL# https://raw.githubusercontent.com/arnavgr/termux-nf/main/getnf --output getnftemp
    curl -fL# https://raw.githubusercontent.com/arnavgr/termux-nf/main/applynf --output applynftemp
fi

mv getnftemp "$DEST/getnf" 
mv applynftemp "$DEST/applynf"  
chmod 755 "$DEST/getnf"  
chmod 755 "$DEST/applynf"


$SILENT || echo "${GREEN}Installation finished${RESET}"
