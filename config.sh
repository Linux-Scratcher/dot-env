#!/bin/bash

# Faire fonctionner pacman sur votre machine Steam :
sudo steamos-readonly disable; sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -Sy --noconfirm conky
sudo pacman-key --populate holo
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo

# Mode bureau plasma au démarage de la machine sans passer par le steam big picture :
steamos-session-select plasma-persistent
