# Frequently Asked Questions (FAQ)

This page answers common questions about **SecurOS**, its installation, usage, and troubleshooting.

---

## General Questions

### Q1: What is SecurOS?

**A:**  
SecurOS is a **security-focused Linux distribution based on Arch Linux**, built using the official ArchISO framework. It comes pre-installed with a curated collection of penetration testing, security research, reverse engineering, and forensics tools.

---

### Q2: Who is SecurOS intended for?

**A:**  
SecurOS is intended for:
- penetration testers and red teamers
- cybersecurity students and educators
- CTF participants
- security researchers and developers

It is **not designed as a general-purpose desktop OS** for everyday use.

---

### Q3: Is SecurOS free and open-source?

**A:**  
Yes. SecurOS is free to use and open-source.  
You can download it from the official website:  
👉 https://securos.org

---

### Q4: Is SecurOS legal to use?

**A:**  
Yes — **when used responsibly**.  
SecurOS must only be used on systems you own or have explicit permission to test. Unauthorized testing of third-party systems is illegal.

---

## System & Hardware

### Q5: What desktop environment does SecurOS use?

**A:**  
SecurOS uses **KDE Plasma**, preconfigured for security and development workflows.

---

### Q6: What are the recommended system requirements?

**A:**  
SecurOS can run on a wide range of hardware.

**Recommended minimums:**
- CPU: 4 cores
- RAM: 6 GB
- Storage: 40 GB (if installed)
- UEFI system preferred

SecurOS runs especially well in virtual machines.

---

### Q7: Can SecurOS run as a live system?

**A:**  
Yes. SecurOS is distributed as a **live ISO** and can be run without installing to disk.

---

## Installation Questions

### Q8: Can I install SecurOS alongside another operating system?

**A:**  
Yes. SecurOS supports dual-boot installations.  
During installation, you can manually partition your disk and configure a bootloader.

---

### Q9: Can I install SecurOS in a virtual machine?

**A:**  
Yes. SecurOS works with:
- VirtualBox
- VMware
- QEMU / KVM

For best performance, enable hardware virtualization and allocate sufficient RAM.

---

### Q10: How do I create a bootable USB drive?

**A:**  
Please follow the official installation guide:  
👉 https://github.com/Secur-OS/SecurOS/blob/main/docs/HOWTO-INSTALL.md

---

## Networking & Internet

### Q11: How do I connect to the Internet?

**A:**  
SecurOS supports multiple networking tools.

#### Wi-Fi (Terminal)
Use `iwctl`:
```bash
iwctl
