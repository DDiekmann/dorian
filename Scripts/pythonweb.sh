#! /usr/bin/bash
# Run to create a python project with nicegui

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Install poetry
$SCRIPT_DIR/poetry_setup.sh $1

cd $1

poetry add nicegui

cat $SCRIPT_DIR/python/nicegui.txt >>$1/app.py
