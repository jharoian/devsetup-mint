#!/bin/bash

# Alacritty - OpenGL terminal emulator - alacritty.org

sudo apt install -y alacritty

mkdir -p $HOME/.config/alacritty/defaults

cp $DSMINT_INSTALL/configs/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
cp $DSMINT_INSTALL/configs/alacritty/fonts/DejaVuSansMono.toml $HOME/.config/alacritty/font.toml
cp $DSMINT_INSTALL/configs/alacritty/fonts/font-size.toml $HOME/.config/alacritty/font-size.toml

cp $DSMINT_INSTALL/themes/tokyo-night/alacritty.toml $HOME/.config/alacritty/theme.toml

cp $DSMINT_INSTALL/defaults/alacritty/alacritty.toml $HOME/.config/alacritty/defaults/alacritty.toml
cp $DSMINT_INSTALL/defaults/alacritty/btop.toml $HOME/.config/alacritty/defaults/btop.toml
cp $DSMINT_INSTALL/defaults/alacritty/pane.toml $HOME/.config/alacritty/defaults/pane.toml


