#!/bin/bash

###################
# Install ansible #

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get install pip -y
    yes | sudo pip install ansible-base
else
    echo "Ansible already installed"
fi

echo "Install ansible modules"
ansible-galaxy install -r requirements.yml

#####################################
# Display real installation process #
echo ""
echo "Customize the playbook ansible-desktop.yml to suit your needs, then run ansible with :"
echo "  ansible-playbook dotfiles.yml -i hosts --ask-become-pass"
echo ""
