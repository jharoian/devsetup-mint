#!/bin/sh

# Execute on newly installed Linux Mint system to enable sshd
# for cdist to configure the system.

# Exit script on error
set -e

echo "Starting SSH server install..."

# Install ssh server
sudo apt-get install openssh-server

# Enable service to survive restart
sudo systemctl enable ssh

# Start service
sudo systemctl start ssh

echo "...SSH enabled and system ready for cdist deployment"
