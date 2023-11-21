#!/bin/bash

BIA_PATH="$HOME/Documents"

# Define the name of the software
SOFTWARE_NAME="ilastik"
SOFTWARE_URL="https://files.ilastik.org/ilastik-1.4.0-Linux.tar.bz2"
FILE_NAME="ilastik-1.4.0-Linux.tar.bz2"

# Download the software
wget -P "$BIA_PATH" "$SOFTWARE_URL"
cd "$BIA_PATH"

echo "Extracting ilastik"
tar -xvjf "$FILE_NAME"

echo "Removing installer"
rm "$FILE_NAME"
wget -P  "$BIA_PATH/ilastik-1.4.0-Linux/" "https://avatars.githubusercontent.com/u/895767?s=280&v=4"

# Create a .desktop file on the Desktop
echo "Creating executable file on the Desktop"
cd $HOME/Desktop
echo "[Desktop Entry]
Name=$SOFTWARE_NAME
Exec=$HOME/Documents/ilastik-1.4.0-Linux/run_ilastik.sh
Terminal=true
Type=Application
Icon=$HOME/Documents/ilastik-1.4.0-Linux/895767?s=280.png
" > ilastik.desktop


# Make .desktop file executable
chmod u+x ilastik.desktop


echo "An executable .desktop file has been created"
