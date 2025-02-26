#!/bin/bash

# Exit on errors
set -x

echo "Installing packages.."
sudo apt update
sudo apt install -y $(cat packages.txt)

if ! command -v snap &>/dev/null; then
  echo "Snap is not installed. Installing snap"
  sudo apt install -y snapd
fi

if [ -f snap_packages.txt ]; then
  echo "Installling Snap packages..."

  regular_packages=$(grep -v -- '--classic' snap_packages.txt | grep -v '^#')
  if [ -n "$regular_packages" ]; then
    echo "Installing regular Snap packages: $regular_packages"
    sudo snap install "$regular_packages"
  fi

  classic_packages=$(grep -- '--classic' snap_packages.txt | grep -v '^#' | cut -d' ' -f1)
  if [ -n "$classic_packages" ]; then
    echo "Installing classic Snap packages: $classic_packages"
    sudo snap install --classic $classic_packages
  fi

else
  echo "No snap packages to install"
fi

echo "Installation complete"
