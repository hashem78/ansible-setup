#!/bin/bash

# Install sudo if not already installed
apt-get update
apt-get install -y sudo

# Create the user mythi with password 'password'
useradd -m -p 'password' -s /bin/bash mythi

# Add the user mythi to the sudo group
usermod -aG sudo mythi

# Update the package index and install required packages
sudo -H -u mythi bash -c 'sudo apt-get update && sudo apt-get install -y python3 python3-pip git'

# Install Ansible for the user mythi
sudo -H -u mythi bash -c 'pip3 install ansible'

# Switch to the user mythi
su - mythi
