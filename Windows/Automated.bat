@Echo off
title -= Yureka Flashing & Recovery Wizard By Nick =-
cls
echo Hello Uncle, Welcome.
echo Please read the following few lines very carefully.
echo 1. Download all the three items.
echo 2. Create a folder on your Desktop called Niraj.
echo 3. Rename 300mb file to rom.zip.
echo 4. Rename a few kb file to adb.zip.
echo 5. Rename 19mb file to recovery.img.
echo 6. You only change the name. Extension will be there by default.
echo 7. If you have read all of this.
pause
cls
echo Well done. Now i will start the process.
echo Open settings app on your phone.
echo Go to Developer Options.
echo Enable USB Debugging.
echo After you have done all of this.
pause
cls
cd %USERPROFILE%\Desktop\Niraj\
echo A few last steps. After that i will do everything.
echo Extract the small zip file. Copy all the items to C:\WINDOWS\System32\
echo After doing this.
pause
cls
echo Okay. Hard work has been done.
echo Sit back and relax.
echo Your phone may dance, scream and cry. Just don't do anything.
echo Don't remove your phone until i tell you.
echo Am I clear?
pause
cls
echo So now i am starting my work.
echo You will get a popup on your phone.
echo Allow that and also tick always allow.
echo Okay?
pause
cls
adb devices
Echo Enable that option now.
pause
Echo Now i will update the recovery partition of Android.
pause
adb reboot-bootloader
echo Now you will get a fastboot mode on your phone. After that screen appears.
pause
echo Updating recovery.
fastboot -i 0x1ebf flash recovery recovery.img
echo Now phone will restart.
echo After it boots up unlock the screen wait for 5 seconds and
pause
echo Rebooting phone to recovery.
adb reboot recovery
cls
echo Now you will see a screen saying TeamWin Recovery
echo Click on wipe
echo Then Click on Advanced Wipe.
Echo Select System,data, cache, dalvik-cache.
echo Slide right to wipe.
echo It may take 10-15 minutes.
echo After it is done.
pause
cls
echo Well done.
echo Now we will install new Android made by me.
echo Press home button icon on screen.
echo select advanced
echo Select ADB Sideload
echo swipe right.
echo after doing this
pause
cls
echo Installing android
adb sideload rom.zip
echo Rebooting your phone as everything is done.
adb reboot
echo Enjoy!!!
exit