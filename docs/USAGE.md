# FILE: docs/USAGE.md

# Using SecurOS

This document describes usage guidelines for SecurOS.

---

## Intended Use

SecurOS is designed for penetration testing, red team operations, security research, CTF environments, and educational labs.

It is not intended as a general-purpose desktop operating system.

---

## Recommended Practices

- Change default credentials immediately
- Use isolated or authorized testing environments
- Keep tools and system packages updated
- Avoid running SecurOS on production systems

---

## Package Management

Install packages:
sudo pacman -S <package>

Update system:
sudo pacman -Syu

---

## Tooling Scope

SecurOS includes tools for network reconnaissance, web application testing, password auditing, wireless security, reverse engineering, forensics, traffic analysis, and exploit development.

Tool selection is curated and subject to change.
