#! /usr/bin/bash

# Install pipx
sudo apt install pipx

# Install poetry
pipx install poetry
pipx ensurepath

# Facilitates working with Virtual Environment
# from https://medium.com/hepsiburada-data-science/poetry-the-ultimate-tool-for-python-dependency-management-4bf8f68a55cf
poetry config virtualenvs.in-project true
poetry config virtualenvs.path .venv
