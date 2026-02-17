# Motorola G54 Flash Tool - Troubleshooting Guide

## Common Issues and Solutions

### Issue 1: Device Not Detected in Fastboot
**Symptoms:** `fastboot devices` returns no devices

**Solutions:**
1. Install proper USB drivers for Motorola G54
2. Enable Developer Mode on the device
3. Enable USB Debugging
4. Unlock the bootloader on the device
5. Try a different USB cable or port
6. Check Device Manager for unknown devices

### Issue 2: Fastboot Timeout
**Symptoms:** Command hangs or times out

**Solutions:**
1. Restart device in fastboot mode
2. Check USB connection
3. Update fastboot tool
4. Try reducing USB hub usage

### Issue 3: Flash Fails - Partition Error
**Symptoms:** Error during flashing

**Solutions:**
1. Verify firmware files are correct and complete
2. Ensure sufficient space on device
3. Try flashing individual partitions
4. Rebuild the device recovery

### Issue 4: Bootloop After Flash
**Symptoms:** Device stuck in boot loop

**Solutions:**
1. Boot into recovery mode
2. Perform factory reset from recovery
3. Flash stock ROM again
4. Check for corrupted system partition

### Important Files Location
- Firmware: `firmware/` directory
- Scripts: `scripts/` directory
- Tools: `tools/tiny-fastboot/`

### Getting Help
For additional support, check official Motorola documentation or XDA forums.
