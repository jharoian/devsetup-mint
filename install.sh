#!/bin/bash

# Exit script if error occurs
set -e

# Set install location if not set
DSMINT_INSTALL=${DSMINT_INSTALL:=$(pwd)}
echo "[DEBUG] Installing from ${DSMINT_INSTALL}"

# Check version of OS - only run on Linux Mint for now
echo "[DEBUG] Checking OS version for compatibility"
source ${DSMINT_INSTALL}/install/check-linux-version.sh

# Make sure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Update system
echo "[DEBUG] Updating system"

sudo apt update -y
sudo apt upgrade -y

# Install any tools needed for this script
#sudo apt install -y 

# Install gum and make some choices
echo "Get ready to make a few choices..."
source ${DSMINT_INSTALL}/install/terminal/required/01-gum.sh >/dev/null
source ${DSMINT_INSTALL}/install/first-run-choices.sh

# Install terminal updates
echo "[DEBUG] Starting terminal updates"
source ${DSMINT_INSTALL}/install/terminal.sh

# Install desktop updates
echo "[DEBUG] Starting desktop updates"
source ${DSMINT_INSTALL}/install/desktop.sh

# Revert to default idle and lock settings
gsettings reset org.gnome.desktop.screensaver lock-enabled
gsettings reset org.gnome.desktop.session idle-delay

# Reboot to capture setting changes
gum confirm "Ready to reboot for all setting changes to take effect?" && sudo reboot
