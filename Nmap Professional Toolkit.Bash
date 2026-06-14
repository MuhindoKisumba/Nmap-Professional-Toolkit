#!/bin/bash

############################################################
# discovery.sh
############################################################

TARGET=$1
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p reports

nmap -sn $TARGET \
-oA reports/discovery_$DATE

############################################################
# port_scan.sh
############################################################

TARGET=$1
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p reports

sudo nmap \
-p- \
-sS \
-T4 \
$TARGET \
-oA reports/ports_$DATE

############################################################
# service_detection.sh
############################################################

TARGET=$1
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p reports

nmap \
-sV \
$TARGET \
-oA reports/services_$DATE

############################################################
# os_detection.sh
############################################################

TARGET=$1
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p reports

sudo nmap \
-O \
$TARGET \
-oA reports/os_$DATE

############################################################
# vulnerability_scan.sh
############################################################

TARGET=$1
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p reports

nmap \
-sV \
--script vuln \
$TARGET \
-oA reports/vuln_$DATE

############################################################
# full_audit.sh
############################################################

TARGET=$1
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p reports

sudo nmap \
-p- \
-sS \
-sV \
-O \
-T4 \
$TARGET \
-oA reports/full_audit_$DATE

############################################################
# generate_report.sh
############################################################

XML_FILE=$1

xsltproc \
$XML_FILE \
-o report.html

############################################################
# archive_reports.sh
############################################################

DATE=$(date +"%Y%m%d")

tar -czvf \
reports_$DATE.tar.gz \
reports/

############################################################
# encrypt_reports.sh
############################################################

FILE=$1

gpg \
-c \
--cipher-algo AES256 \
$FILE

echo "Rapport chiffré avec succès."