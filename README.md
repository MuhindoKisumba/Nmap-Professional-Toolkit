# Nmap Professional Toolkit

## Description

Nmap Professional Toolkit est une collection de scripts destinés à :

- Découverte réseau
- Inventaire des actifs
- Audit de sécurité
- Détection de services
- Détection des systèmes d'exploitation
- Analyse de vulnérabilités
- Génération de rapports

---

## Arborescence

nmap-professional-toolkit/

├── README.md
├── LICENSE
├── .gitignore

├── scans/
│   ├── discovery.sh
│   ├── port_scan.sh
│   ├── service_detection.sh
│   ├── os_detection.sh
│   ├── vulnerability_scan.sh
│   └── full_audit.sh

├── scripts/
│   ├── generate_report.sh
│   ├── archive_reports.sh
│   └── encrypt_reports.sh

├── reports/

├── docs/
│   ├── nmap_cheatsheet.md
│   ├── nse_scripts.md
│   └── best_practices.md

└── examples/

---

## Installation

Ubuntu / Debian

sudo apt update
sudo apt install nmap xsltproc gnupg -y

Fedora

sudo dnf install nmap xsltproc gnupg

Rocky Linux / AlmaLinux

sudo dnf install nmap xsltproc gnupg

---

## Utilisation

Découverte réseau

./scans/discovery.sh 192.168.1.0/24

Scan de ports

./scans/port_scan.sh 192.168.1.10

Détection des services

./scans/service_detection.sh 192.168.1.10

Détection OS

./scans/os_detection.sh 192.168.1.10

Analyse de vulnérabilités

./scans/vulnerability_scan.sh 192.168.1.10

Audit complet

./scans/full_audit.sh 192.168.1.10

---

## Rapports générés

TXT
XML
GNMAP
HTML

Tous les rapports sont enregistrés dans :

reports/

---

## Avertissement

Utiliser uniquement sur les systèmes dont vous êtes propriétaire ou pour lesquels vous disposez d'une autorisation explicite.

---

## Licence

MIT
