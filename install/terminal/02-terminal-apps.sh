#!/bin/bash

# Install programs associated with a-shell.sh and .bashrc
sudo apt install -y fzf ripgrep bat eza zoxide plocate btop apache2-utils fd-find tldr

# bat installs as batcat on Linux Mint.  Setup an alias locally
mkdir -p ~/.local/bin
ln -sf /usr/bin/batcat ~/.local/bin/bat

# Notes:
# fzf - a command line fuzzy finder
# ripgrep - recursively searches directories
# bat - cat replacement with syntax highlighting, etc
# zoxide - smarter cd command
# plocate - faster locate
# btop - resource monitor
# apache2-utils - web server utilities
# fd-find - alternate version of find
# tldr - better man

