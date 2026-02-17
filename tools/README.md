# Tiny Fastboot Script - Tools

This directory contains the Tiny Fastboot Script, which is essential for flashing firmware to the Motorola G54.

## About Tiny Fastboot Script

Tiny Fastboot is a lightweight alternative to the full Android SDK. It provides only the essential fastboot tool without the entire SDK overhead.

## Installation

### Step 1: Download Tiny Fastboot
Visit one of these resources:
- **Official:** https://github.com/Pauloo27/tiny-fastboot
- **Releases:** https://github.com/Pauloo27/tiny-fastboot/releases

### Step 2: Extract Files
1. Download the latest release ZIP
2. Extract to this `tools/tiny-fastboot/` directory
3. Ensure `fastboot.exe` is directly in this folder

### Step 3: Verify Installation
Run: `fastboot --version`

You should see the fastboot version information.

## Files Expected
After extraction, you should have:
```
tools/
├── tiny-fastboot/
│   ├── fastboot.exe
│   ├── README.md
│   └── (other files)
```

## Usage

The scripts in the parent `scripts/` directory use fastboot from here.

## Troubleshooting

### "fastboot: command not found"
- Verify extraction path is correct
- Check fastboot.exe exists in this directory
- Update PATH environment variable if needed

## Security Note
Always download from official sources to ensure tool integrity.
