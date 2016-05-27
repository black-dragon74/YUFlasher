#!/bin/bash
# Script for AK Yadav by Nick aka black.dragon74
# Clear the mess
clear

function nn() {
	sleep 1
}
folder=~/Desktop/Nick

echo -e "Helper & Flasher for YU Yureka by Nick" && nn
echo -e "Download the files and place them on Desktop in a folder." && nn
echo -e "Enter the name of folder as Nick." && nn
echo -e "Rename 300Mb file as rom.zip" && nn
echo -e "Rename 19Mb file as recovery.img" && nn
echo -e "Rename Smallest file as adb.zip" && nn
read -p "After doing all of this press Enter " some && nn

echo -e "Great. Now I will check if you have done what I said." && nn

if [ -e $folder ];
	then
	echo -e "Folder has been found. Checking the file names." && nn
	if [ -e $folder/rom.zip ];
		then
		echo -e "300 MB File has been verified." && nn
	else
		echo -e "300MB File not found. Rename it to rom.zip" && nn
	fi
	echo -e "Checking 19MB file" && nn
	if [ -e $folder/recovery.img ];
		then
		echo -e "19MB File has been verified." && nn
	else
		echo -e "19MB file not found. Rename that to recovery.img" && nn
	fi
	echo -e "Checking smallest file."
	if [ -e $folder/adb.zip ];
		then
		echo -e "ADB Found." && nn
	else
		echo -e "Smallest file not found. Rename that to adb.zip" && nn
	fi
else
	echo -e "****** Folder not found. ******" && nn
	echo -e "Create a folder named Nick on your Desktop." && nn
	echo -e "Then place all the files and rename them as told earlier." && nn
fi

echo -e "Connect your phone to this computer now." && nn
echo -e "Goto Settings > Developer Options" && nn
echo -e "Enable USB Debugging. If it is On Leave it." && nn
read -p "Press Enter after doing all of this " somm
echo -e "*****"