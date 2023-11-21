#!/bin/bash

BIA_PATH="$HOME/Documents"

# Define the name of the software
SOFTWARE_NAME="ImageJ-Fiji"
SOFTWARE_URL="https://downloads.imagej.net/fiji/latest/fiji-linux64.zip"
FILE_NAME="fiji-linux64.zip"

# Download the software
wget -P "$BIA_PATH" "$SOFTWARE_URL"
cd "$BIA_PATH"

echo "Extracting Fiji"
unzip "$FILE_NAME"

echo "Removing installer"
rm "$FILE_NAME"

# Create a .desktop file on the Desktop
echo "Creating executable file on the Desktop"
cd $HOME/Desktop
echo "[Desktop Entry]
Name=$SOFTWARE_NAME
Exec=$HOME/Documents/Fiji.app/ImageJ-linux64
Terminal=true
Type=Application
Icon=$HOME/Documents/Fiji.app/images/icon-flat.png
" > ImageJ-Fiji.desktop


# Make .desktop file executable
chmod u+x ImageJ-Fiji.desktop


echo "An executable .desktop file has been created"
