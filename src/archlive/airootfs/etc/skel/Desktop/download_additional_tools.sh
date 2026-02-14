#!/bin/bash

mkdir -p /opt/github_tools

cd /opt/github_tools

# Clone repositories
git clone https://github.com/laramies/theHarvester
git clone https://github.com/jaykali/maskphish
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
git clone https://github.com/lgandx/Responder
git clone https://github.com/BC-SECURITY/Starkiller
git clone https://github.com/RedSiege/EyeWitness
git clone https://github.com/kgretzky/evilginx2
git clone https://github.com/fortra/impacket
git clone https://github.com/NytroRST/NetRipper
git clone https://github.com/screetsec/TheFatRat
git clone https://github.com/codingo/VHostScan
git clone https://github.com/danielmiessler/SecLists
git clone https://github.com/sullo/nikto
git clone https://github.com/portswigger/turbo-intruder
git clone https://github.com/OWASP/Amass
git clone https://github.com/carlospolop/PEASS-ng
git clone https://github.com/s0md3v/XSStrike
git clone https://github.com/sqlmapproject/sqlmap
git clone https://github.com/swisskyrepo/PayloadsAllTheThings
git clone https://github.com/sherlock-project/sherlock
git clone https://github.com/trustedsec/social-engineer-toolkit

chown -R securos:securos /opt/github_tools
