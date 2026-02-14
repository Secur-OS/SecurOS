# SecurOS Troubleshooting Guide

This guide addresses common issues you might encounter when using SecurOS.

## Boot Issues

### Cannot Boot From USB
1. Verify your BIOS/UEFI settings allow booting from USB
2. Disable Secure Boot in BIOS/UEFI
3. Try a different USB port (preferably USB 2.0)
4. Recreate the bootable USB using a different tool

### Boot Hangs on Startup
1. Try booting with nomodeset parameter:
   - At GRUB menu, press 'e'
   - Add `nomodeset` after `quiet splash`
   - Press F10 to boot

### Black Screen After Boot
1. Boot with nomodeset parameter (see above)
2. Try different graphics drivers after installation:
   - For NVIDIA: `sudo pacman -S nvidia`
   - For AMD: `sudo pacman -S xf86-video-amdgpu`
   - For Intel: `sudo pacman -S xf86-video-intel`

## Installation Issues

### Calamares Installer Crashes
1. Boot into live environment and update system:
   ```
   sudo pacman -Syu
   ```
2. Restart and try installation again
3. Try manual partitioning if automatic fails

### Disk Not Detected
1. Ensure SATA mode is set to AHCI in BIOS
2. For NVMe drives, check if the kernel module is loaded:
   ```
   lsmod | grep nvme
   ```

## Post-Installation Issues

### Network Not Working
1. For wireless issues:
   ```
   sudo systemctl start NetworkManager
   sudo systemctl enable NetworkManager
   nmtui
   ```
2. For wired connections:
   ```
   sudo systemctl start dhcpcd
   sudo systemctl enable dhcpcd
   ```

### Graphics Issues
1. Check installed drivers:
   ```
   lspci -k | grep -A 2 -E "(VGA|3D)"
   ```
2. Install appropriate drivers (see "Black Screen After Boot" above)

### Audio Not Working
1. Install PulseAudio if not present:
   ```
   sudo pacman -S pulseaudio pulseaudio-alsa
   ```
2. Restart PulseAudio:
   ```
   pulseaudio -k
   pulseaudio --start
   ```

### Package Management Issues
1. If pacman fails with database errors:
   ```
   sudo rm -f /var/lib/pacman/db.lck
   sudo pacman -Syyu
   ```
2. If mirrors are slow:
   ```
   sudo pacman-mirrors -f 5
   sudo pacman -Syyu
   ```

## Security Tools Issues

### Tools Not Working Properly
1. Ensure you have the latest version:
   ```
   sudo pacman -Syu
   ```
2. Run the tool from terminal to see error messages
3. Check for missing dependencies and install them

### Cannot Access Network Interfaces
1. Ensure you're running the tool with sudo/root privileges
2. Check if the interface is in the correct mode:
   ```
   ip link show
   ```

## System Maintenance

### Regular Maintenance Commands
```
# Update system
sudo pacman -Syu

# Clean package cache
sudo pacman -Sc

# Remove orphaned packages
sudo pacman -Rns $(pacman -Qtdq)
```

## Still Need Help?

If you continue to experience issues:
- Email: contact@templeenterprise.com
- Check our GitHub issues for similar problems
