#! /usr/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

chmod +x $SCRIPT_DIR/../Scripts/poetry_setup.sh
chmod +x $SCRIPT_DIR/../Scripts/poetry_rust_setup.sh

if grep -q "# scripts" ~/.bashrc; then
    echo "alias for ls already exists"
else
    echo '' >>~/.bashrc
    echo "# scripts" >>~/.bashrc
    echo "genpoetry() {
        bash $SCRIPT_DIR/../Scripts/poetry_setup.sh \$1;
    }" >>~/.bashrc
    echo "genpoetryrust() {
        bash $SCRIPT_DIR/../Scripts/poetry_rust_setup.sh \$1;
    }" >>~/.bashrc
    echo "genrust() {
        bash $SCRIPT_DIR/../Scripts/rust_setup.sh \$1;
    }" >>~/.bashrc
    echo "genwebpy() {
        bash $SCRIPT_DIR/../Scripts/pythonweb.sh \$1;
    }" >>~/.bashrc
fi

source ~/.bashrc
