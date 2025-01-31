#!/bin/bash

source ./lib.sh

if [[ "$(sudo steamos-readonly status)" == "enabled" ]]; then
# Faire fonctionner pacman sur votre machine Steam :
    sudo steamos-readonly disable
    sudo pacman-key --init
    sudo pacman-key --populate archlinux
    sudo pacman -Sy --noconfirm conky
    sudo pacman-key --populate holo
    sudo pacman-key --init
    sudo pacman-key --populate archlinux
    sudo pacman-key --populate holo
fi


link_config_files "$PWD"/.zshrc "$HOME"/.zshrc
