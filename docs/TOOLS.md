# SecurOS - Security Tools Documentation

This document provides an overview of the security tools included in SecurOS.

## Information Gathering

### Nmap
- **Description**: Network scanner used to discover hosts and services
- **Usage**: `nmap [options] target`
- **Example**: `nmap -sS -sV -A 192.168.1.0/24`

### TheHarvester
- **Description**: Gathers emails, subdomains, hosts, employee names, open ports and banners
- **Usage**: `theharvester -d domain -l limit -b source`
- **Example**: `theharvester -d example.com -l 500 -b google`

### Amass
- **Description**: In-depth Attack Surface Mapping and Asset Discovery
- **Usage**: `amass enum -d domain`
- **Example**: `amass enum -d example.com`

## Vulnerability Analysis

### Nikto
- **Description**: Web server scanner that performs comprehensive tests
- **Usage**: `nikto -h target`
- **Example**: `nikto -h http://example.com`

### SQLmap
- **Description**: Automated SQL injection and database takeover tool
- **Usage**: `sqlmap -u "URL" --dbs`
- **Example**: `sqlmap -u "http://example.com/page.php?id=1" --dbs`

### Metasploit Framework
- **Description**: Penetration testing framework
- **Usage**: `msfconsole`
- **Basic Commands**:
  - `search [term]` - Find modules
  - `use [module]` - Select a module
  - `show options` - Show required options
  - `exploit` - Run the module

## Web Application Security

### Burp Suite
- **Description**: Web vulnerability scanner and proxy
- **Usage**: Launch from application menu
- **Common Tasks**:
  - Intercepting requests
  - Spider websites
  - Scanning for vulnerabilities

### OWASP ZAP
- **Description**: Web application security scanner
- **Usage**: Launch from application menu
- **Common Tasks**:
  - Automated scans
  - Spider websites
  - Manual testing

## Wireless Security

### Aircrack-ng
- **Description**: Suite for wireless network security assessment
- **Basic Usage**:
  - `airmon-ng start wlan0` - Start monitor mode
  - `airodump-ng wlan0mon` - Capture packets
  - `aircrack-ng capture.cap -w wordlist.txt` - Crack password

### Kismet
- **Description**: Wireless network detector and sniffer
- **Usage**: `kismet`

## Password Attacks

### Hydra
- **Description**: Login cracker for various protocols
- **Usage**: `hydra -l username -P passwordlist.txt service://server`
- **Example**: `hydra -l admin -P passwords.txt ssh://192.168.1.1`

### John the Ripper
- **Description**: Password cracker
- **Usage**: `john --wordlist=wordlist.txt hashfile`

### Hashcat
- **Description**: Advanced password recovery
- **Usage**: `hashcat -m 0 -a 0 hash.txt wordlist.txt`

## Network Analysis

### Wireshark
- **Description**: Network protocol analyzer
- **Usage**: Launch from application menu

### Tcpdump
- **Description**: Command-line packet analyzer
- **Usage**: `tcpdump -i interface options`
- **Example**: `tcpdump -i eth0 port 80`

## Social Engineering

### Social Engineering Toolkit (SET)
- **Description**: Framework for social engineering attacks
- **Usage**: `setoolkit`

## Advanced Usage

For more detailed information on each tool, consult the man pages or run with the `--help` flag.
