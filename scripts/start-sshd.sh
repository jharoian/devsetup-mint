#!/bin/sh

# Execute on newly installed Linux Mint system to enable sshd
# for cdist to configure the system.

# Exit script on error
set -e

echo "Starting SSH server install\n"

# Install ssh server
sudo apt install openssh-server

# Enable service to survive restart
sudo systemctl enable ssh

# Start service
sudo systemctl start ssh

echo "\nSSH enabled and system ready for cdist deployment"