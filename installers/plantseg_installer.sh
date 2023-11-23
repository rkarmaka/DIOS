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
SOFTWARE_NAME="plantseg"

# Download the software
module load miniconda3/4.10.3
mamba create -n plantseg-env -c pytorch -c nvidia -c conda-forge -c lcerrone plantseg pytorch-cuda=11.7 cudatoolkit -y

mkdir $HOME/Documents/plantseg
cd $HOME/Documents/plantseg
wget https://github.com/hci-unihd/plant-seg/raw/master/plantseg/legacy_gui/logo.png
echo "#!/bin/bash
module load miniconda3/4.10.3
source activate plantseg-env
plantseg --gui" > "plantseg.sh"

chmod u+x plantseg.sh

# Create a .desktop file on the Desktop
echo "Creating executable file on the Desktop"
cd $HOME/Desktop
echo "[Desktop Entry]
Name=plantseg
Exec=$HOME/Documents/plantseg/plantseg.sh
Terminal=true
Type=Application
Icon=$HOME/Documents/plantseg/logo.png
" > plantseg.desktop


# Make .desktop file executable
chmod u+x plantseg.desktop


echo "An executable .desktop file has been created"
