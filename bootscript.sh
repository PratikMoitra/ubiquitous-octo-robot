#!/bin/bash

# Install Ansible on Arch Linux
if [ -f /etc/arch-release ]; then
    sudo pacman -S ansible git
fi

# Install Ansible on Debian/Ubuntu
if [ -f /etc/debian_version ]; then
    sudo apt update
    sudo apt install ansible git
fi

# Install ansible on macOS
if [ "$(uname)" == "Darwin" ]; then
    brew install ansible git
fi

# Run ansible-pull command to execute an ansible script. 
sudo ansible-pull -U https://github.com/PratikMoitra/ubiquitous-octo-robot.git playbook/ansible-boot-1.yml
