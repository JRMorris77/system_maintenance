#!/bin/bash
# Filename: system_maintenance.sh
# Author: James Morris
# Email: jmorris[at]kissws[dot]com
# Website: https://kissws.com/
# License: MIT License
# Usage: This script performs system maintenance tasks including updating packages, clearing caches, and displaying system information. Built specifically for Ubuntu.
# Requirements: Minimum system requirements include a Linux-based operating system (Ubuntu) with sudo privileges. Required packages: screenfetch, resolvectl.

echo ""
echo "System Information"
echo "=============================="
# Display system information in ASCII art style
screenfetch
echo ""
echo ""
echo "Updating Packages..."
echo "=============================="
# Update and upgrade the system
sudo apt-get update -y
sudo apt-get upgrade -y
echo "=============================="
echo "Packages Updated!"
echo ""
echo "Clearing Package Apt Data..."
echo "=============================="
# Clean up unnecessary packages and cache
sudo apt-get autoremove -y
sudo apt-get clean
echo "=============================="
echo "Package apt Data Cleared!"
echo ""
echo "Display Resolver Statistics"
echo "=============================="
# Show DNS Cache pre-flush
sudo resolvectl statistics
echo ""
echo "Clearing DNS Cache..."
echo "=============================="
echo "..."
# Clear DNS cache using resolvectl
sudo resolvectl flush-caches
echo "=============================="
echo "DNS cache cleared!"
echo ""
echo "Clearing Swap Space..."
echo "=============================="
echo "..."
# Clear swap space
sudo swapoff -a && sudo swapon -a
echo "=============================="
echo "Swap Space cleared!"
echo ""
echo "Clearing Page Cache, Dentries, & Inodes..."
echo "========================================"
# Free up page cache, dentries, and inodes
sudo sync; echo 3 | sudo tee /proc/sys/vm/drop_caches
echo "========================================"
echo "Page Cache, Dentries, & Inodes Cleared!"
echo ""
# All Finished!
echo "========================================"
echo "Maintenance Tasks Complete! Goodbye!"
echo "========================================"
echo ""
