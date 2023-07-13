#! /usr/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Install poetry
poetry new $1
cd $1
poetry add maturin
poetry add --group dev pytest
poetry add --group dev mypy
poetry add --group dev black
touch $1/app.py

# Add git
git init
cp $SCRIPT_DIR/gitignore/python.txt .gitignore
git branch -M main
git add .
git commit -m "Initial commit"
