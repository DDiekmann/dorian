#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="How can I help you?"
TITLE="Dorian"
MENU="What do you want to install?"

OPTIONS=(   1 "Docker"
            2 "Github CLI"
            3 "Obsidian"
            4 "Poetry"
            5 "Rust"
            6 "Signal"
            7 "VSCode"
            8 "Back")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            sudo bash $SCRIPT_DIR/docker.sh
            ;;
        2)
            sudo bash $SCRIPT_DIR/github.sh
            ;;
        3)
            sudo bash $SCRIPT_DIR/obsidian.sh
            ;;
        4)
            sudo bash $SCRIPT_DIR/poetry.sh
            ;;
        5)
            sudo bash $SCRIPT_DIR/rust.sh
            ;;
        6)
            sudo bash $SCRIPT_DIR/signal.sh
            ;;
        7)
            sudo bash $SCRIPT_DIR/vscode.sh
            ;;
        8)
            sudo bash $SCRIPT_DIR/../dorian.sh
            ;;
esac