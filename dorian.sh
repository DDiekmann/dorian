#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
TERMINAL=$(tty)

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="How can I help you?"
TITLE="Dorian"
MENU="How can I help you?"

OPTIONS=(1 "Installation"
    2 "Setup"
    3 "Create Project"
    4 "Wifi")

CHOICE=$(dialog --clear \
    --backtitle "$BACKTITLE" \
    --title "$TITLE" \
    --menu "$MENU" \
    $HEIGHT $WIDTH $CHOICE_HEIGHT \
    "${OPTIONS[@]}" \
    2>&1 >$TERMINAL)

clear
case $CHOICE in
1)
    sudo bash $SCRIPT_DIR/Installations/menu.sh
    ;;
2)
    sudo bash $SCRIPT_DIR/Setup/menu.sh
    ;;
3)
    sudo bash $SCRIPT_DIR/Scripts/menu.sh
    ;;
4)
    sudo nmtui
    ;;
esac
