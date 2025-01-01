#!/bin/bash

# Check for existing .bashrc - backup if exists - replace
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.orig
cp ${DSMINT_INSTALL}/configs/bashrc ~/.bashrc
cp ${DSMINT_INSTALL}/configs/bashrc-shell ~/.bashrc-shell
cp ${DSMINT_INSTALL}/configs/bashrc-aliases ~/.bashrc-aliases
cp ${DSMINT_INSTALL}/configs/bashrc-prompt ~/.bashrc-prompt
cp ${DSMINT_INSTALL}/configs/bashrc-init ~/.bashrc-init

# Check for existing .inputrc - backup if exists - replace
[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.orig
cp ${DSMINT_INSTALL}/configs/inputrc ~/.inputrc
