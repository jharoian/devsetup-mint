#!/bin/bash

echo "[DEBUG] Installing from ${DSMINT_INSTALL}"

# Run all scripts in terminal subdirectory
for installer in ${DSMINT_INSTALL}/install/terminal/*.sh;
do
	echo "[DEBUG] Installing ${installer}"
	source $installer;
done
