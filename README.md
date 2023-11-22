# DIOS

## Description:
This repo contains the instructions and installer files for project DIOS. Project DIOS is a project to make bioimage analysis software easily available. It is developed on Open On Demand. For every software, there is an installer bash file that can be downloaded using a specific wget command. Once the file is downloaded, users can execute the installer which will then install/load all the required packages and create a desktop icon for the specific software on the desktop. From the next time, the software will be available for the users to access.


## List of available software:
* Fiji - v2.15.0
* Napari - v0.4.18 
* ilastik - v1.4.0
* QuPath - v0.4.1

Please use the following instructions to install any of the software.

## Installation:
### Fiji
```
cd Downloads
wget https://raw.githubusercontent.com/rkarmaka/DIOS/main/installers/fiji_installer.sh
```
then run:
```
chmod u+x fiji_installer.sh
```
Then run:
```
./fiji_installer.sh
```



## System Requirement:
We recommend that you start a Desktop Mate with at least 8 GB of memory. For the best graphics, please decrease the compression and increase the image quality. Please note that this may also affect the performance and increase the lag as it is dependent on the internet connection.

## Contact:
If you run into any issue or have any software suggestions, please reach out to .......
