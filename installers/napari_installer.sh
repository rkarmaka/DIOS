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
SOFTWARE_NAME="napari"

# Download the software
module load miniconda3/4.10.3
conda create -y -n napari-env -c conda-forge python=3.9
source activate napari-env
mamba install -y -c conda-forge napari pyqt

mkdir $HOME/Documents/napari
cd $HOME/Documents/napari
wget https://imagej.net/media/icons/napari.svg
echo "#!/bin/bash
module load miniconda3/4.10.3
source activate napari-env
napari" > "napari.sh"

chmod u+x napari.sh

# Create a .desktop file on the Desktop
echo "Creating executable file on the Desktop"
cd $HOME/Desktop
echo "[Desktop Entry]
Name=napari
Exec=$HOME/Documents/napari/napari.sh
Terminal=true
Type=Application
Icon=$HOME/Documents/napari/napari.svg
" > napari.desktop


# Make .desktop file executable
chmod u+x napari.desktop


echo "An executable .desktop file has been created"
