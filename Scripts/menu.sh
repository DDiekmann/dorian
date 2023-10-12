#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="How can I help you?"
TITLE="Dorian"
MENU="What do you want to install?"

OPTIONS=(   1 "Create Blank Python Project"
            2 "Create Python Project with Nicegui"
            3 "Create Python Project with Rust"
            4 "Create Rust Project"
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
            user_input=$(\
                        dialog --title "Create Directory" \
                                --inputbox "Enter the directory name:" 8 40 \
                        3>&1 1>&2 2>&3 3>&- \
                        )
            sudo bash $SCRIPT_DIR/poetry_setup.sh $user_input
            ;;
        2)
            user_input=$(\
                        dialog --title "Create Directory" \
                                --inputbox "Enter the directory name:" 8 40 \
                        3>&1 1>&2 2>&3 3>&- \
                        )
            sudo bash $SCRIPT_DIR/pythonweb.sh $user_input
            ;;
        3)
            user_input=$(\
                        dialog --title "Create Directory" \
                                --inputbox "Enter the directory name:" 8 40 \
                        3>&1 1>&2 2>&3 3>&- \
                        )
            sudo bash $SCRIPT_DIR/poetry_rust_setup.sh $user_input
            ;;
        4)
            user_input=$(\
                        dialog --title "Create Directory" \
                                --inputbox "Enter the directory name:" 8 40 \
                        3>&1 1>&2 2>&3 3>&- \
                        )
            sudo bash $SCRIPT_DIR/rust_setup.sh $user_input
            ;;
        5)
            sudo bash $SCRIPT_DIR/../dorian.sh
            ;;
esac