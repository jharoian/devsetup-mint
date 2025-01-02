#!/bin/bash

# Allow access to $UBUNTU_CODENAME
source /etc/os-release

# Install GPG key
sudo mkdir -p -m 0755 /etc/apt/keyrings
sudo wget -nv -O/etc/apt/keyrings/docker.asc https://download.docker.com/linux/ubuntu/gpg
sudo chmod go+r /etc/apt/keyrings/docker.asc

# Add repo

echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] \
	https://download.docker.com/linux/ubuntu $UBUNTU_CODENAME stable" \
	| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update and install
sudo apt-get update -y
sudo apt-get install -y 

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin \
	docker-compose-plugin docker-ce-rootless-extras

# Give this user priviledged Docker access
sudo usermod -aG docker ${USER}

# Limit log size to avoid running out of disk space
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' \
	| sudo tee /etc/docker/daemon.json > /dev/null

