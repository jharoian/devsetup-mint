#!/bin/bash

# Exit script if error occurs
set -e

# Set install location if not set
DSMINT_INSTALL=${DSMINT_INSTALL:=$(pwd)}
echo "[DEBUG] Installing from ${DSMINT_INSTALL}"

# Check version of OS - only run on Linux Mint for now
echo "[DEBUG] Checking OS version for compatibility"
source ${DSMINT_INSTALL}/install/check-linux-version.sh

# Update system
echo "[DEBUG] Updating system"

sudo apt update -y
sudo apt upgrade -y

# Install any tools needed for this script
#sudo apt install -y 

# Install terminal updates
echo "[DEBUG] Starting terminal updates"
source ${DSMINT_INSTALL}/install/terminal.sh



