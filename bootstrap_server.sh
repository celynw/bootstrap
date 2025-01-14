#!/usr/bin/env sh
set -e

sudo apt update
sudo apt install -y curl
curl -LsSf https://astral.sh/uv/install.sh | sh
if [ -f "$HOME/.local/bin/env" ]; then
	. "$HOME/.local/bin/env"
fi
uv venv
. ./.venv/bin/activate
uv pip install ansible

mkdir -p /tmp/ansible-setup
wget -O /tmp/ansible-setup/bootstrap.yml https://raw.githubusercontent.com/celynw/bootstrap/master/bootstrap_server.yml
cd /tmp/ansible-setup && ansible-playbook bootstrap.yml --ask-become-pass
echo "Now go to https://github.com/settings/keys and attach your public key to your GitHub account"
cat ~/.ssh/id_rsa.pub
