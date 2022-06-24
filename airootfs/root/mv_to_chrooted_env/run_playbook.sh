#!/bin/sh

pacman -Sy ansible git ansible-galaxy python-pip
pip install packaging
ansible-galaxy collection install kewlfft.aur

git clone --recurse-submodules https://github.com/marques-bruno/ansible-arch-setup.git .ansible
ansible-playbook -K .ansible/roles/main.yml
