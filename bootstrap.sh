#!/usr/bin/env sh
sudo apt update
sudo apt install -y nala
sudo nala install -y ansible

mkdir -p /tmp/ansible-setup
wget -O /tmp/ansible-setup/initialise.yml https://raw.githubusercontent.com/celynw/bootstrap/master/bootstrap.yml
cd /tmp/ansible-setup && ansible-playbook initialise.yml --ask-become-pass
echo "Now paste your public key and attach to your GitHub account"
