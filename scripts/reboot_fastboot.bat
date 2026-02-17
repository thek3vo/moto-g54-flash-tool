@echo off
REM Reboot device to fastboot mode
REM Requires ADB connection

echo.
echo ========================================
echo Motorola G54 - Boot to Fastboot
echo ========================================
echo.

echo Rebooting device to fastboot mode...
echo.

adb reboot bootloader

echo.
echo Device rebooting to fastboot mode...
echo Please wait a few seconds and then check device status.
echo.

pause
