# FILE: docs/HOWTO-INSTALL.md

# SecurOS Installation Guide

This document explains how to boot and install SecurOS.

---

## Prerequisites

You will need:
- A physical machine or virtual machine capable of running 64-bit Linux
- The latest SecurOS ISO from https://securos.org
- A USB flash drive (4 GB or larger) or a virtual machine
- Access to BIOS or UEFI settings for bare-metal installation

---

## Creating a Bootable USB Drive

### Linux

1. Download the SecurOS ISO
2. Insert the USB drive
3. Identify the device using lsblk
4. Write the ISO using dd

Command:
sudo dd if=securos_latest.iso of=/dev/sdX bs=4M status=progress oflag=sync

Replace /dev/sdX with the correct device. All data on the USB drive will be erased.

---

### Windows

Use Rufus or Balena Etcher:
1. Select the SecurOS ISO
2. Select the USB device
3. Flash the image
4. Safely eject the USB drive

---

## Virtual Machine Installation

Supported platforms:
- VirtualBox
- VMware
- QEMU / KVM

Steps:
1. Create a new virtual machine
2. Select Arch Linux (64-bit)
3. Attach the SecurOS ISO
4. Allocate at least 6 GB RAM and 4 CPU cores
5. Boot the virtual machine

---

## Booting SecurOS

1. Boot from the USB drive or virtual machine
2. The GRUB menu will appear
3. Select a SecurOS boot option
4. Wait for the live environment to load

---

## Installing to Disk

If you wish to install SecurOS permanently, follow the installer provided in the live environment or the official installation workflow.

Installing SecurOS may overwrite existing operating systems.

---

## Post-Installation Steps

1. Log in using the default credentials:
   Username: securos
   Password: securos

2. Change the password:
passwd

3. Update the system:
sudo pacman -Syu

4. Configure networking, drivers, and tools as required.

---

## Completion

SecurOS is now ready for use in authorized security testing and research environments.
