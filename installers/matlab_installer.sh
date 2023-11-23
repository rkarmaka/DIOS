#!/bin/bash

BIA_PATH="$HOME/Documents/MATLAB"

if [ ! -d "$BIA_PATH" ]; then
	# if the folder does not exist, create it
	mkdir -p "$BIA_PATH"
	echo "Folder created."
else
	echo "Folder already exists."
fi

cd $HOME/Documents/MATLAB
wget https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Matlab_Logo.png/667px-Matlab_Logo.png

echo "#!/bin/bash
module load matlab
matlab" > "matlab.sh"
chmod u+x matlab.sh


# Create a .desktop file on the Desktop
echo "Creating executable file on the Desktop"
cd $HOME/Desktop
echo "[Desktop Entry]
Name=matlab
Exec=$HOME/Documents/MATLAB/matlab.sh
Terminal=true
Type=Application
Icon=$HOME/Documents/MATLAB/667px-Matlab_Logo.png
" > matlab.desktop


# Make .desktop file executable
chmod u+x matlab.desktop


echo "An executable .desktop file has been created"
