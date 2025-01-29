#!/bin/bash


# Faire fonctionner pacman sur votre machine Steam :
sudo pacman-key --init
sudo pacman-mirrors --fasttrack 5
sudo pacman -Syyu

# Mode bureau plasma au démarage de la machine sans passer par le steam big picture :
steamos-session-select plasma-persistent
