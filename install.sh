#!/bin/sh

# Install Packages
PACK='vim python3 python3-pip python3-dev libssl-dev libffi-dev build-essential git wget checksec'
apt update -y
apt install -y $PACK

# Install gef
wget -q https://raw.githubusercontent.com/bata24/gef/dev/install.sh -O- | sed -e 's/pip3 install/pip3 install --break-system-packages/g' | sh

# Install ROPgadget
pip3 install ropgadget

# Install pwntools
python3 -m pip install --upgrade pwntools

# Clone PwnDocker
git clone https://github.com/kmm2003/PwnDocker.git
rm -rf ./PwnDocker/.git
cp ./PwnDocker/pwn* /usr/bin/
