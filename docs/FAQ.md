# FILE: docs/FAQ.md

# Frequently Asked Questions (FAQ)

This document answers common questions regarding SecurOS, its installation, usage, and maintenance.

---

## General

### What is SecurOS?

SecurOS is a security-focused Linux distribution based on Arch Linux and built using the ArchISO framework. It provides a ready-to-use environment for penetration testing, security research, reverse engineering, and forensics.

---

### Who is SecurOS intended for?

SecurOS is intended for penetration testers, red team operators, cybersecurity students, educators, CTF participants, and security researchers.

It is not designed to be a general-purpose daily desktop operating system.

---

### Is SecurOS free and open-source?

Yes. SecurOS is free to use and open-source. All source code and documentation are hosted under the Secur-OS organization.

---

### Is using SecurOS legal?

Yes, when used responsibly. SecurOS must only be used on systems you own or have explicit permission to test. Unauthorized testing of third-party systems is illegal.

---

## System and Hardware

### What desktop environment does SecurOS use?

SecurOS uses the KDE Plasma desktop environment, preconfigured for security and development workflows.

---

### What are the recommended system requirements?

Recommended minimum specifications:
- CPU: 4 cores
- RAM: 6 GB
- Storage: 40 GB if installed
- UEFI system preferred

SecurOS can run in live mode without installation.

---

### Can SecurOS run as a live system?

Yes. SecurOS is distributed as a live ISO and can be used without installing to disk.

---

## Installation

### Can I install SecurOS alongside another operating system?

Yes. Dual-boot installations are supported, but disk partitioning must be done carefully to avoid data loss.

---

### Can I install SecurOS in a virtual machine?

Yes. SecurOS works with VirtualBox, VMware, and QEMU or KVM.

---

## Networking

### How do I connect to the Internet?

Wi-Fi using terminal:

Run:
iwctl

Inside the interactive prompt:
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect <SSID>

Ethernet connections are usually configured automatically.

Graphical networking is available via NetworkManager when enabled.

---

### My Wi-Fi adapter is not detected. What should I do?

Check available interfaces:
ip link

Possible causes include unsupported hardware, missing firmware, or virtual machine limitations.

---

## Package Management

### How do I update SecurOS?

SecurOS uses pacman. To update the system:
sudo pacman -Syu

---

### Can I install additional software?

Yes. Packages can be installed using pacman or the Arch User Repository if configured.

---

## Accounts and Security

### What are the default login credentials?

Username: securos  
Password: securos  

Change these credentials immediately after installation.

---

### I forgot my password. How can I reset it?

You can reset your password by booting into a live environment and using chroot or recovery options.

---

## Support

### Where can I get help?

Support is available via GitHub Issues under the Secur-OS organization or by contacting contact@templeenterprise.com.

---

## Development

### Is SecurOS still in development?

Yes. SecurOS is under active development. Tools, defaults, and system behavior may change between releases.

---

### Can I contribute?

Yes. Contributions are welcome. Refer to CONTRIBUTING.md for details.
