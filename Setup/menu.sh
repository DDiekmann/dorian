#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="How can I help you?"
TITLE="Dorian"
MENU="What do you want to install?"

OPTIONS=(   1 "Basic Aliases"
            2 "Script Aliases"
            3 "Terminal Setup"
            4 "Git Setup"
            5 "Back")

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
            sudo bash $SCRIPT_DIR/basic_aliases.sh
            ;;
        2)
            sudo bash $SCRIPT_DIR/script_aliases.sh
            ;;
        3)
            sudo bash $SCRIPT_DIR/terminal_setup.sh
            ;;
        4)
            sudo bash $SCRIPT_DIR/git_setup.sh
            ;;
        5)
            sudo bash $SCRIPT_DIR/../dorian.sh
            ;;
esac