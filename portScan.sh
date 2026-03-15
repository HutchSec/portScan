#!/bin/bash
# Simple Nmap TCP & UDP Scan Script
# Usage: sudo ./scan.sh <IP_or_range>

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <IP_or_range>"
  exit 1
fi

TARGET="$1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
OUTPUT_DIR="scan_$TIMESTAMP"
mkdir -p "$OUTPUT_DIR"

echo "[*] Running full TCP scan on $TARGET..."
nmap -p- -sS -sC -sV "$TARGET" -oN "$OUTPUT_DIR/tcp_$TIMESTAMP.txt"

echo "[*] Running top-100 UDP scan on $TARGET..."
nmap -sU --top-ports 100 "$TARGET" -oN "$OUTPUT_DIR/udp_$TIMESTAMP.txt"

echo "[+] Scans complete. Results saved in $OUTPUT_DIR"
