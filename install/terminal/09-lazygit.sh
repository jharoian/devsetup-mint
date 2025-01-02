#!/bin/bash

cd /tmp
DSMINT_LAZYGIT_VERSION=$(wget -qO - --show-progress "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" \
	| grep -Po '"tag_name": *"v\K[^"]*')
wget -qO lazygit.tar.gz --show-progress "https://github.com/jesseduffield/lazygit/releases/download/v${DSMINT_LAZYGIT_VERSION}/lazygit_${DSMINT_LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
rm -rf lazygit.tar.gz lazygit
cd -



