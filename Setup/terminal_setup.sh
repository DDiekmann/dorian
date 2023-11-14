#!/bin/bash

# Setup terminal
echo "Installing terminal..."
sudo apt install -y terminator

# Setup zsh
echo "Installing zsh..."
sudo apt install -y zsh
echo "Setting zsh as default shell..."
chsh -s $(which zsh)
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup powerlevel10k
echo "Installing powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
echo "source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# Setup zsh-autosuggestions
echo "Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc

# Setup zsh-syntax-highlighting
echo "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >>~/.zshrc

# Setup starship
echo "Installing starship..."
curl -fsSL https://starship.rs/install.sh | sh
echo "" >>~/.bashrc
echo "#Starhip" >>~/.bashrc
echo 'eval "$(starship init bash)"' >>~/.bashrc
echo 'eval "$(starship init zsh)"' >>~/.zshrc
source ~/.bashrc
