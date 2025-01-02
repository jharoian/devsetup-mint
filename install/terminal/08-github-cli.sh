#!/bin/bash

# Install gpg key
sudo mkdir -p -m 755 /etc/apt/keyrings
sudo wget -nv -O/etc/apt/keyrings/githubcli-archive-keyring.gpg \
	 https://cli.github.com/packages/githubcli-archive-keyring.gpg
sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg

# Add repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
	| sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

# Update and install
sudo apt update -y
sudo apt install -y gh
