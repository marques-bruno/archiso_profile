#!/bin/sh
echo "If you run into issues Make sure packages ansible and git are installed"

git clone --recurse-submodules https://github.com/marques-bruno/ansible-arch-setup.git .ansible
ansible-playbook -K .ansible/roles/main.yml
