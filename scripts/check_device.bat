@echo off
REM Check if device is connected and ready for flashing
REM This script tests the Fastboot connection

echo.
echo ========================================
echo Motorola G54 - Device Status Check
echo ========================================
echo.

REM Check if tiny-fastboot folder exists
if not exist "..\tools\tiny-fastboot\fastboot.exe" (
    echo [ERROR] Fastboot tool not found in tools\tiny-fastboot\
    echo Please download Tiny Fastboot Script and extract it there.
    echo.
    pause
    exit /b 1
)

echo Checking for connected devices...
echo.

REM Run fastboot devices command
"..\tools\tiny-fastboot\fastboot.exe" devices

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Device not detected!
    echo Please ensure:
    echo - Device is connected via USB
    echo - Bootloader is unlocked
    echo - Fastboot mode is enabled
    echo.
) else (
    echo.
    echo [SUCCESS] Device detected!
    echo You can proceed with flashing.
    echo.
)

pause
