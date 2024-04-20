#!/bin/bash

adduser --disabled-password --comment "" mythi
adduser mythi sudo
apt update
apt install -y sudo python3 python3-pip git
pip3 install ansible
su mythi
cd /home/mythi/
git clone https://github.com/hashem78/ansible-setup
