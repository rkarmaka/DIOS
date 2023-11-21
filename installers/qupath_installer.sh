#!/bin/bash

BIA_PATH="$HOME/Documents"

if [ ! -d "$BIA_PATH" ]; then
	# if the folder does not exist, create it
	mkdir -p "$BIA_PATH"
	echo "Folder created."
else
	echo "Folder already exists."
fi

# Define the name of the software
SOFTWARE_NAME="qupath"
SOFTWARE_URL="https://github.com/qupath/qupath/releases/download/v0.4.4/QuPath-0.4.4-Linux.tar.xz"
FILE_NAME="QuPath-0.4.4-Linux.tar.xz"

# Download the software
wget -P "$BIA_PATH" "$SOFTWARE_URL"
cd "$BIA_PATH"

echo "Extracting QuPath"
tar -xf "$FILE_NAME"
chmod u+x "$BIA_PATH/QuPath/bin/QuPath.sh"
chmod u+x "$BIA_PATH/QuPath/bin/QuPath"

echo "Removing installer"
rm "$FILE_NAME"

# Create a .desktop file on the Desktop
echo "Creating executable file on the Desktop"
cd $HOME/Desktop
echo "[Desktop Entry]
Name=$SOFTWARE_NAME
Exec=$HOME/Documents/QuPath/bin/QuPath
Terminal=true
Type=Application
Icon=$HOME/Documents/QuPath/lib/QuPath.png
" > qupath.desktop


# Make .desktop file executable
chmod u+x qupath.desktop


echo "An executable .desktop file has been created"
