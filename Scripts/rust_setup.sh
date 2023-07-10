#! /usr/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Create Rust project
cargo new $1
cd $1

# Add git
git init
cp $SCRIPT_DIR/rust.txt .gitignore
git branch -M main
git add .
git commit -m "Initial commit"
