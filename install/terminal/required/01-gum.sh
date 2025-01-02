#!/bin/bash

# Gum is used for user interface
cd /tmp
DSMINT_GUM_VERSION=$(wget -qO - --show-progress \
	 "https://api.github.com/repos/charmbracelet/gum/releases/latest" | grep -Po '"tag_name": *"v\K[^"]*')
wget -qO gum.deb --show-progress \
	"https://github.com/charmbracelet/gum/releases/download/v${DSMINT_GUM_VERSION}/gum_${DSMINT_GUM_VERSION}_amd64.deb"
sudo apt-get install -y ./gum.deb
rm gum.deb
cd -

