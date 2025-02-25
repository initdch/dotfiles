#!/bin/bash

# Exit on errors
set -x

echo "Installing packages.."
sudo apt get update
sudo apt install -y $(cat packages.txt)
