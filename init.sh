#!/bin/bash

# Install sudo if not already installed
apt-get update
apt-get install -y sudo

# Create the user mythi with password 'password'
# useradd -m -p '$y$j9T$Tzm8HVr66WHce3gssjOAs1$8U4YBva8dKLrleee34ftMfyQ20If4PYqZu0WdIYx2w1' -s /bin/bash mythi

# Add the user mythi to the sudo group
usermod -aG sudo $USER

# Update the package index and install required packages
sudo -H -u mythi bash -c 'sudo apt-get update && sudo apt-get install -y python3 python3-pip git'

# Install Ansible for the user mythi
sudo -H -u mythi bash -c 'pip3 install ansible'

echo 'export PATH=$PATH:/home/mythi/.local/bin' >> /home/mythi/.bashrc
echo 'set -o vi' >> /home/mythi/.bashrc

# Switch to the user mythi
su mythi

cd /home/mythi/

# Clone this repo
git clone https://github.com/hashem78/ansible-setup.git
