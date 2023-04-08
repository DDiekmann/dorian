#!/bin/bash

# Setup starship
echo "Installing starship..."
curl -fsSL https://starship.rs/install.sh | sh
echo "" >> ~/.bashrc
echo "#Starhip" >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc
source ~/.bashrc