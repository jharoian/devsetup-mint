#!/bin/bash

# Check for /etc/os-release script - appears in Debian based systems
if [ ! -f /etc/os-release ]; then
	echo "[ERROR] Unable to determine OS. File /etc/os-release not found."
	echo "        Installation stopped."
	exit 1
fi

source /etc/os-release

# Check for Linux Mint version 22 or higher
if [ "$ID" != "linuxmint" ] || [ $(echo "$VERSION_ID >= 22" | bc) != 1 ]; then
    echo "[ERROR] OS requirement not met"
    echo "        You are currently running: $ID $VERSION_ID"
    echo "        OS required: Linux Mint 22 or higher"
    echo "        Installation stopped."
    exit 1
fi

echo "[DEBUG] OS identified: $PRETTY_NAME"
