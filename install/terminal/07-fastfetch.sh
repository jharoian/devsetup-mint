#!/bin/bash

# Install fastfetch which displays system information in the terminal
sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch
sudo apt update -y
sudo apt install -y fastfetch

mkdir -p $HOME/.config/fastfetch

# Check for existing configuration - backup if exists - replace
if [ -f "$HOME/.config/fastfetch/config.jsonc" ]; then
    mv $HOME/.config/fastfetch/config.jsonc $HOME/.config/fastfetch/config.jsonc.orig
fi
cp ${DSMINT_INSTALL}/configs/fastfetch.jsonc $HOME/.config/fastfetch/config.jsonc
