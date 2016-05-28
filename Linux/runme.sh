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
clear
echo -e "***** Starting the Protocol *****" && nn
echo -e "Unlock your device and wait on the desktop."
echo -e "You will now get a dialog box on your screen" && nn
echo -e "Accept that and also tick Always Allow" && nn
read -p "Press ENTER if you are ready " simm
echo -e "**** ACCEPT THE DIALOG ON YOUR SCREEN ***" && nn
adb devices
read -p "If you see your device below then press ENTER else close this program and run it again " nimm
echo -e "Your device will now reboot to FASTBOOT mode." && nn
echo -e "Don't remove your device until asked" && nn
read -p "Press ENTER if you are ready " dimm
echo -e "Rebooting Device" && nn
adb reboot-bootloader
echo -e "Waiting for 8 seconds before proceeding."
sleep 8
clear
echo -e "Now I will update the recovery partition" && nn
echo -e "Plaese standby" && nn
fastboot -i 0x1ebf flash recovery $folder/recovery.img
echo -e "Waiting for 3 more seconds"
sleep 3
echo -e "Rebooting device..."
fastboot -i 0x1ebf reboot
echo -e "Waiting for 3 mintues for the device to boot up"
sleep 180
echo -e "Rebooting to Recovery..."
adb reboot recovery
echo -e "Waiting for 20 seconds."
sleep 20
clear
echo -e "******************************************" && nn
echo -e "*********   READ CAREFULLY    ************" && nn
echo -e "******************************************" && nn
read -p "Tap on Wipe & press ENTER " timm
read -p "Select System, data, dalvik-cache, cache & press ENTER " yimm
read -p "Slide right and Press ENTER " uimm
read -p "Press Enter Once it is done " iimm
read -p "Press HOME button Icon & press ENTER " oimm
read -p "Click on Advanced & Press ENTER " qimm
read -p "Select ADB Sideload & Press ENTER " wimm
read -p "Slide right & press ENTER " eimm
read -p "Press ENTER to start flashing " rimm
echo -e "#########################################" && nn
echo -e "######  STARTING FLASHING PROCEDURE #####" && nn
echo -e "#########################################" && nn
adb sideload $folder/rom.zip
echo -e "Rebooting the device."
adb reboot
echo -e "All is done. You may press ENTER to exit. " pimm
clear
echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "~~~~~~ THANKS FOR CO-OPERATING ~~~~~~~"
echo -e "~~~~~~~~~~~~~~ GOODBYE ~~~~~~~~~~~~~~~"
echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"