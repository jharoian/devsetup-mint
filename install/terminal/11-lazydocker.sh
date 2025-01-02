#!/bin/bash

cd /tmp
DSMINT_LAZYDOCKER_VERSION=$(wget -qO - --show-progress "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" \
	| grep -Po '"tag_name": *"v\K[^"]*')
wget -qO lazydocker.tar.gz --show-progress "https://github.com/jesseduffield/lazydocker/releases/download/v${DSMINT_LAZYDOCKER_VERSION}/lazydocker_${DSMINT_LAZYDOCKER_VERSION}_Linux_x86_64.tar.gz"
tar xf lazydocker.tar.gz lazydocker
sudo install lazydocker -D -t /usr/local/bin/
rm -rf lazydocker.tar.gz lazydocker
cd -


