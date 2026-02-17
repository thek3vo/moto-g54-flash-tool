@echo off
title Moto G54 - Flash Tool Starter
color 0A

echo ========================================
echo   MOTOROLA G54 FLASH TOOL
echo   by thek3vo
echo ========================================
echo.
echo Dieses Script startet den Flash-Prozess
echo fuer dein Motorola G54.
echo.
echo WICHTIG: Stelle sicher, dass:
echo [1] Dein G54 im Fastboot-Modus ist
echo [2] USB-Kabel angeschlossen ist
echo [3] Firmware in firmware\ entpackt ist
echo [4] Tiny Fastboot Script vorbereitet ist
echo.
echo ========================================
echo.
pause

:: Pruefe ob firmware Ordner existiert
if not exist "firmware" (
    echo [ERROR] Ordner 'firmware' nicht gefunden!
    echo Bitte erstelle den Ordner und entpacke deine Firmware dort.
    echo.
    pause
    exit /b 1
)

:: Wechsle in firmware Ordner
cd /d "%~dp0firmware"

:: Pruefe ob flash.bat existiert
if not exist "flash.bat" (
    echo [ERROR] flash.bat nicht gefunden!
    echo.
    echo Bitte kopiere flash.bat und den tools Ordner
    echo aus dem Tiny Fastboot Script in den firmware\ Ordner.
    echo.
    echo Siehe: tools\README.md fuer Download-Links
    echo.
    pause
    cd ..
    exit /b 1
)

echo [OK] Alle Checks bestanden!
echo [INFO] Starte Tiny Fastboot Script...
echo.

:: Starte flash.bat
call flash.bat

echo.
echo ========================================
echo Flash-Prozess abgeschlossen!
echo.
echo Falls Fehler auftraten:
echo - Siehe docs\TROUBLESHOOTING.md
echo - Mache Screenshots der Fehlermeldungen
echo ========================================
echo.
pause

:: Zurueck zum Hauptverzeichnis
cd ..