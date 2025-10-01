#!/bin/bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

# Verify the installation
if ansible --version | grep -q "ansible"; then
    echo "Ansible installed successfully."
else
    echo "Ansible installation failed."
fi