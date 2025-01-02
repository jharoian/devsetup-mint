#!/bin/bash

# Install zellij
rustup update
cargo install --locked zellij

if [ ! -L "$HOME/.local/bin/zellij" ]; then
    echo "[DEBUG] Creating zellij link"
    ln -s $HOME/.cargo/bin/zellij $HOME/.local/bin/zellij
fi

mkdir -p $HOME/.config/zellij/themes

# Check for existing config.kdl - backup if exists - replace
if [ -f "$HOME/.config/zellij/config.kdl" ]; then
    mv $HOME/.config/zellij/config.kdl $HOME/.config/zellij/config.kdl.orig
fi
cp ${DSMINT_INSTALL}/configs/zellij.kdl $HOME/.config/zellij/config.kdl

if [ -f "$HOME/.config/zellij/themes/tokyo-night.kdl" ]; then
    mv $HOME/.config/zellij/themes/tokyo-night.kdl $HOME/.config/zellij/themes/tokyo-night.kdl.orig
fi
cp ${DSMINT_INSTALL}/themes/tokyo-night/zellij.kdl $HOME/.config/zellij/themes/tokyo-night.kdl
