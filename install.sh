#!/bin/bash

###################
# Install ansible #
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get install ansible -y
else
    echo "Ansible already installed"
fi

#####################################
# Display real installation process #
echo ""
echo "Customize the playbook ansible-desktop.yml to suit your needs, then run ansible with :"
echo "  ansible-playbook local.yml --ask-become-pass"
echo ""
