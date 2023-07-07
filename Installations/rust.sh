#! /usr/bin/bash

# Install rust
echo "Installing rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Add rust to path
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >>~/.bashrc
source ~/.bashrc

# Install cargo-edit
echo "Installing cargo-edit..."
cargo install cargo-edit

# Install cargo-watch
echo "Installing cargo-watch..."
cargo install cargo-watch

# Install cargo-make
echo "Installing cargo-make..."
cargo install --force cargo-make

# Install cargo-expand
echo "Installing cargo-expand..."
cargo install cargo-expand

# Install cargo-tree
echo "Installing cargo-tree..."
cargo install cargo-tree
