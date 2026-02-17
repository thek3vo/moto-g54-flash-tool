# Motorola G54 Flash Tool 📱⚡

> **Complete flash tool collection for Motorola G54 with automated scripts**

Ein komplettes Flash-Tool-Repository für das Motorola G54, das dir ermöglicht, Stock-Firmware einfach per Doppelklick zu flashen.

## ⚠️ Wichtige Hinweise

- **Bootloader muss bereits entsperrt sein**
- Nur für Motorola G54 (überprüfe deine exakte Modellnummer: XT2343-x)
- Falsche Firmware kann dein Gerät bricken - nutze nur passende ROMs für dein Modell und deine Region
- Backup deiner Daten vorher erstellen

## 📋 Voraussetzungen

- Windows 10/11
- Motorola/Lenovo USB-Treiber installiert
- USB-Kabel (original empfohlen)
- Bootloader entsperrt (OEM Unlock aktiviert)

## 🚀 Schnellstart

### 1. Repository klonen oder ZIP downloaden

```bash
git clone https://github.com/thek3vo/moto-g54-flash-tool.git
cd moto-g54-flash-tool
```

Oder: "Code" → "Download ZIP" → entpacken

### 2. Firmware besorgen

1. Lade die passende Stock-Firmware für dein G54-Modell herunter
   - Über Motorola Rescue & Smart Assistant
   - Oder von vertrauenswürdigen Firmware-Quellen
2. Entpacke die Firmware-ZIP komplett in den Ordner `firmware/`

### 3. Tiny Fastboot Script vorbereiten

1. Lade Tiny Fastboot Script herunter (Link in `tools/README.md`)
2. Entpacke es in den Ordner `tools/tiny-fastboot/`
3. Kopiere `flash.bat` und den `tools` Ordner in den `firmware/` Ordner

### 4. Flashen

1. Handy in Fastboot-Modus bringen:
   - Power + Volume Down gedrückt halten
   - Oder via ADB: `adb reboot bootloader`
2. USB-Kabel anschließen
3. Doppelklick auf `start_flash.bat` im Hauptverzeichnis
4. Anweisungen im CMD-Fenster folgen

## 📁 Ordnerstruktur

```
moto-g54-flash-tool/
├── firmware/               # Hier kommt deine entpackte Firmware rein
│   ├── boot.img
│   ├── vendor_boot.img
│   ├── super.img_sparsechunk.*
│   ├── flash.bat          # Wird aus tiny-fastboot kopiert
│   └── tools/             # Wird aus tiny-fastboot kopiert
├── scripts/
│   ├── flash_all_g54.bat  # Alternatives manuelles Flash-Script
│   ├── check_device.bat   # Device-Erkennung testen
│   └── reboot_fastboot.bat # Schneller Fastboot-Neustart
├── tools/
│   ├── tiny-fastboot/     # Tiny Fastboot Script hier entpacken
│   └── README.md          # Download-Links und Anleitung
├── docs/
│   ├── TROUBLESHOOTING.md # Fehlerbehebung
│   └── FIRMWARE_SOURCES.md # Firmware-Quellen
├── start_flash.bat        # HAUPTSKRIPT - Hier starten!
└── README.md              # Diese Datei
```

## 🛠️ Enthaltene Scripts

### `start_flash.bat` (Hauptskript)
Der einfachste Weg - startet automatisch das Tiny Fastboot Script mit allen Checks.

### `scripts/flash_all_g54.bat`
Manuelles Flash-Script mit einzelnen fastboot-Befehlen - für Fortgeschrittene.

### `scripts/check_device.bat`
Überprüft, ob dein Gerät im Fastboot-Modus erkannt wird.

### `scripts/reboot_fastboot.bat`
Startet dein Gerät schnell in den Fastboot-Modus (wenn USB-Debugging aktiv ist).

## 📖 Detaillierte Anleitungen

- [Fehlerbehebung](docs/TROUBLESHOOTING.md)
- [Firmware-Quellen](docs/FIRMWARE_SOURCES.md)
- [Tiny Fastboot Script Download](tools/README.md)

## ⚡ Alternativer Workflow: Nur Tiny Fastboot nutzen

Wenn du lieber direkt mit Tiny Fastboot arbeitest:

1. Entpacke deine Firmware in `firmware/`
2. Entpacke Tiny Fastboot Script
3. Kopiere `flash.bat` + `tools/` nach `firmware/`
4. Öffne CMD in `firmware/` und führe `flash.bat` aus

## 🆘 Häufige Probleme

### "Kein Fastboot-Gerät gefunden"
- USB-Treiber installiert?
- Anderes USB-Kabel probieren
- Anderen USB-Port nutzen (USB 2.0 bevorzugt)
- Im Geräte-Manager nach unbekannten Geräten suchen

### "FAILED (remote: Partition doesn't exist)"
- Firmware passt nicht zu deinem Modell
- Überprüfe Modellnummer (XT2343-x) im Bootloader
- Richtige Region-Firmware geladen?

### "super.img_sparsechunk not found"
- Firmware unvollständig entpackt
- Dateinamen in der Firmware überprüfen
- Evtl. `system.img_sparsechunk.*` statt `super.img_sparsechunk.*`

## 🔗 Nützliche Links

- [Motorola Bootloader Unlock](https://motorola-global-portal.custhelp.com/app/standalone/bootloader/unlock-your-device-a)
- [Android Platform Tools (ADB/Fastboot)](https://developer.android.com/tools/releases/platform-tools)
- [XDA Developers Moto G54 Forum](https://xdaforums.com/)

## ⚖️ Disclaimer

Dieses Tool ist für Bildungszwecke und erfahrene Nutzer gedacht. Der Autor übernimmt keine Haftung für Schäden an deinem Gerät. Das Entsperren des Bootloaders und Flashen von Firmware erfolgt auf eigene Gefahr und kann die Garantie erlöschen lassen.

## 📝 Lizenz

MIT License - siehe [LICENSE](LICENSE)

## 🤝 Credits

- Tiny Fastboot Script by [enthusi_ast](https://forum.xda-developers.com/)
- Motorola G54 Unbrick Guide Community
- XDA Developers Forum

---

**Made with ⚡ by [thek3vo](https://github.com/thek3vo)**
