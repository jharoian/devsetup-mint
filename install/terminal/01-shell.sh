#!/bin/bash

# Check for existing .bashrc - backup if exists - replace
if [ -f "$HOME/.bashrc" ]; then
    mv $HOME/.bashrc $HOME/.bashrc.orig
fi
cp ${DSMINT_INSTALL}/configs/bashrc $HOME/.bashrc

if [ -f "$HOME/.bashrc-shell" ]; then
    mv $HOME/.bashrc-shell $HOME/.bashrc-shell.orig
fi
cp ${DSMINT_INSTALL}/configs/bashrc-shell $HOME/.bashrc-shell

if [ -f "$HOME/.bashrc-aliases" ]; then
    mv $HOME/.bashrc-aliases $HOME/.bashrc-aliases.orig
fi
cp ${DSMINT_INSTALL}/configs/bashrc-aliases $HOME/.bashrc-aliases

if [ -f "$HOME/.bashrc-prompt" ]; then
    mv $HOME/.bashrc-prompt $HOME/.bashrc-prompt.orig
fi
cp ${DSMINT_INSTALL}/configs/bashrc-prompt $HOME/.bashrc-prompt

if [ -f "$HOME/.bashrc-init" ]; then
    mv $HOME/.bashrc-init $HOME/.bashrc-init.orig
fi
cp ${DSMINT_INSTALL}/configs/bashrc-init $HOME/.bashrc-init

# Check for existing .inputrc - backup if exists - replace
if [ -f "$HOME/.inputrc" ]; then
    mv $HOME/.inputrc $HOME/.inputrc.orig
fi
cp ${DSMINT_INSTALL}/configs/inputrc $HOME/.inputrc
