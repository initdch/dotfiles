# Personal Dotfiles

This repository contains personal setup scripts to setup Ubuntu from scratch. The goal of these scripts are:

1. to keep track of all possible settings configured
2. to allow for an easy, fast and seamless setup (if I ever consider reinstalling...)

## Ansible Playbook

To setup my local Ubuntu machine, I use the following command which will run the `dotfiles.yml` Ansible playbook.
Run the following command on a shell of your choice.

```bash
ansible-playbook dotfiles.yml -i hosts --ask-become-pass
```

### Requirements
The following tools need to be installed:
- Ansible
