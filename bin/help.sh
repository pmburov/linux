HELP=$(gum choose "Davinci" --header "What do you need help with?" --height 5 | tr '[:upper:]' '[:lower:]')
[ -n "$HELP" ] && gum pager --soft-wrap </home/$USER/.linux/help/$HELP.md
source ~/.linux/bin/menu.sh
