#!/usr/bin/env bash

# Cloud Portfolio Labs - Linux Server Inventory
# Collects basic information about a Linux server.

set -u

section() {
    echo
    echo "===== $1 ====="
}

section "SYSTEM"
hostnamectl 2>/dev/null || hostname
cat /etc/os-release | grep -E '^(PRETTY_NAME|VERSION_ID)='
uname -r

section "CPU"
lscpu | grep -E '^(Architecture|CPU\(s\)|Model name):'

section "MEMORY"
free -h

section "STORAGE"
df -h /

section "NETWORK"
ip -br address
ip route

section "SSH SERVICE"
systemctl is-active ssh 2>/dev/null || true
systemctl is-enabled ssh 2>/dev/null || true

section "FIREWALL"
if command -v ufw >/dev/null 2>&1; then
    sudo ufw status
else
    echo "UFW is not installed."
fi

section "RUNNING SERVICES"
systemctl --type=service --state=running --no-pager |
    head -15

echo
echo "Inventory completed."
