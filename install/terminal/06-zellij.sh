#!/bin/bash

# Install zellij
rustup update
cargo install --locked zellij

if [ ! -L "$HOME/.local/bin/zellij" ]; then
    echo "[DEBUG] Creating zellij link"
    ln -s ~/.cargo/bin/zellij ~/.local/bin/zellij
fi

mkdir -p ~/.config/zellij/themes

if [ ! -f "$HOME/.config/zellij/config.kdl" ]; then
    cp ${DSMINT_INSTALL}/configs/zellij.kdl ~/.config/zellij/config.kdl
fi

cp ${DSMINT_INSTALL}/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
