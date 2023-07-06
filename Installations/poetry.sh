#! /usr/bin/bash

# Install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -

# Add poetry to path
echo 'export PATH="$HOME/.poetry/bin:$PATH"' >>~/.bashrc
source ~/.bashrc

# Facilitates working with Virtual Environment
# from https://medium.com/hepsiburada-data-science/poetry-the-ultimate-tool-for-python-dependency-management-4bf8f68a55cf
poetry config virtualenvs.in-project true
poetry config virtualenvs.path .venv
