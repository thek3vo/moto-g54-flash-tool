@echo off
REM Flash all partitions to Motorola G54
REM Full flash script using Tiny Fastboot

echo.
echo ========================================
echo Motorola G54 - Full Flash Tool
echo ========================================
echo.
echo WARNING: This will wipe all data!
echo Ensure backup is complete!
echo.
pause

echo.
echo Starting flash process...
echo.

cd ..
cd tools\tiny-fastboot

echo.
echo Flashing bootloader...
fastboot flash bootloader ..\..\firmware\bootloader.img

echo.
echo Flashing recovery...
fastboot flash recovery ..\..\firmware\recovery.img

echo.
echo Flashing system...
fastboot flash system ..\..\firmware\system.img

echo.
echo Flashing vendor...
fastboot flash vendor ..\..\firmware\vendor.img

echo.
echo Rebooting device...
fastboot reboot

echo.
echo ========================================
echo Flash complete!
echo Device rebooting...
echo ========================================
echo.

pause
