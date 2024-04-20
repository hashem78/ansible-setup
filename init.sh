#!/bin/bash

useradd -m -p "$y$j9T$Tzm8HVr66WHce3gssjOAs1$8U4YBva8dKLrleee34ftMfyQ20If4PYqZu0WdIYx2w1" -s /bin/bash mythi
adduser mythi sudo
sudo -H -u mythi apt update
sudo -H -u mythi apt install -y sudo python3 python3-pip git
sudo -H -u mythi bash -c 'pip3 install ansible' 
su mythi
