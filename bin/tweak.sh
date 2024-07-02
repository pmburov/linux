if [ -f /usr/share/plymouth/ubuntu-logo.png.bak ]; then
  REMOVE_LOGO='Get back login screen logo'
else
  REMOVE_LOGO='Remove login screen logo'
fi

ITEM=$(gum choose "<< Back" "$REMOVE_LOGO" --header "Select service or app:" --height 9 | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

[ ! -n "$ITEM" ] && exit 0

if [ "$ITEM" == "remove-login-screen-logo" ]; then
  sudo mv /usr/share/plymouth/ubuntu-logo.png /usr/share/plymouth/ubuntu-logo.png.bak
elif [ "$ITEM" == "get-back-login-screen-logo" ]; then
  sudo mv /usr/share/plymouth/ubuntu-logo.png.bak /usr/share/plymouth/ubuntu-logo.png
fi

source ~/.linux/bin/menu.sh
