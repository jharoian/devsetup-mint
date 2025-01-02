#!/bin/bash

# Install nerd fonts
mkdir -p $HOME/.local/share/fonts

cd /tmp

# Alternate mono spaced font
#wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
#unzip JetBrainsMono.zip -d JetBrainsMonoFont
#cp JetBrainsMonoFont/*.ttf $HOME/.local/share/fonts
#rm -rf JetBrainsMono.zip JetBrainsMonoFont

# Mono spaced font
wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/latest/download/DejaVuSansMono.zip
unzip DejaVuSansMono.zip -d DejaVuSansMonoFont
cp DejaVuSansMonoFont/*.ttf $HOME/.local/share/fonts
rm -rf DejaVuSansMono.zip DejaVuSansMonoFont

fc-cache
cd -

# Use font - this will move to the desktop settings area
gsettings set org.gnome.desktop.interface monospace-font-name 'DejaVuSansM Nerd Font Mono 10'

