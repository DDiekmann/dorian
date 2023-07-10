#! /usr/bin/bash

# Download Installer from https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.5/obsidian_1.3.5_amd64.deb

wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.5/obsidian_1.3.5_amd64.deb
sudo apt install ./obsidian_1.3.5_amd64.deb
rm obsidian_1.3.5_amd64.deb

cd ~
echo "Copy the vault link from Github:"
read VAULT
git clone $VAULT
cd $VAULT
