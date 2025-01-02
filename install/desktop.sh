#!/bin/bash

echo "[DEBUG] Installing from ${DSMINT_INSTALL}"

# Run all scripts in application subdirectory
for installer in ${DSMINT_INSTALL}/install/desktop/*.sh;
do
	echo "[DEBUG] Installing ${installer}"
	source $installer;
done
