# DIOS

## Description:
This repo contains instructions and installer files for project DIOS. Project DIOS aims to make bioimage analysis software readily available to biologists. It is developed on Open On Demand and keeping the limitations of Cent OS 7 in mind.


## List of available software:
* Fiji - v2.15.0
* Napari - v0.4.18 
* Ilastik - v1.4.0
* QuPath - v0.4.1
* Matlab - R2023a
* PlantSeg - 1.6.2

Please use the following instructions to install any of the software.

## Installation:
Open a [Desktop Mate](https://o2portal.rc.hms.harvard.edu/pun/sys/dashboard/batch_connect/sys/RC_desktop_mate/session_contexts/new) application on O2 Portal. We recommend that you start a Desktop Mate with at least 8 GB of memory. For the best graphics, please decrease the compression and increase the image quality. Please note that this may also affect the performance and increase the lag as it is dependent on the internet connection. *add screenshots*

Once you are inside DesktopMate, open the terminal window *add screenshot* and run the following commands for specific software. We recommend you open separate windows for separate installations.

After running the commands, please sit back, relax and maybe enjoy a cup of coffee while the installer installs the software for you. Once it is done, you will see that it created a launcher on your desktop. From the next time, you can use the lanucher to open the software and use it. Any changes you make, such as installing new plugins will be available even after you logout.


### Fiji
```
cd Downloads
wget https://raw.githubusercontent.com/rkarmaka/DIOS/main/installers/fiji_installer.sh
```
```
chmod u+x fiji_installer.sh
```
```
./fiji_installer.sh
```

### Napari
```
cd Downloads
wget https://raw.githubusercontent.com/rkarmaka/DIOS/main/installers/napari_installer.sh
```
```
chmod u+x napari_installer.sh
```
```
./napari_installer.sh
```

### Ilastik
```
cd Downloads
wget https://raw.githubusercontent.com/rkarmaka/DIOS/main/installers/ilastik_installer.sh
```
```
chmod u+x ilastik_installer.sh
```
```
./ilastik_installer.sh
```

### QuPath
```
cd Downloads
wget https://raw.githubusercontent.com/rkarmaka/DIOS/main/installers/qupath_installer.sh
```
```
chmod u+x qupath_installer.sh
```
```
./qupath_installer.sh
```

### Matlab
```
cd Downloads
wget https://raw.githubusercontent.com/rkarmaka/DIOS/main/installers/matlab_installer.sh
```
```
chmod u+x matlab_installer.sh
```
```
./matlab_installer.sh
```

### PlantSeg
```
cd Downloads
wget https://raw.githubusercontent.com/rkarmaka/DIOS/main/installers/plantseg_installer.sh
```
```
chmod u+x plantseg_installer.sh
```
```
./plantseg_installer.sh
```



## System Requirement:
We recommend that you start a Desktop Mate with at least 8 GB of memory. For the best graphics, please decrease the compression and increase the image quality. Please note that this may also affect the performance and increase the lag as it is dependent on the internet connection.

## Contact:
If you run into any issues or have any software suggestions, please reach out to .......
