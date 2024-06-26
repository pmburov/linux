ITEM=$(gum choose "<< Back" "Penpot" "Krita" "Emby" "Samba" "Input Remapper" "Eiciel" "balenaEtcher" "Flacon" "Flac Tools" "Tenacity" "Solaar" --header "Select service or app:" --height 13 | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

[ ! -n "$ITEM" ] && exit 0

if [ "$ITEM" == "samba" ]; then
  source ~/.linux/configs/samba.sh
elif [ "$ITEM" == "penpot" ]; then
  source ~/.linux/apps/optional/penpot/penpot.sh
elif [ "$ITEM" == "emby" ]; then
  source ~/.linux/apps/optional/emby/emby.sh
elif [ "$ITEM" == "eiciel" ]; then
  source ~/.linux/apps/optional/Eiciel.sh
elif [ "$ITEM" == "balenaetcher" ]; then
  source ~/.linux/apps/optional/balena-etcher.sh
elif [ "$ITEM" == "input-remapper" ]; then
  source ~/.linux/apps/optional/input-remapper.sh
elif [ "$ITEM" == "flacon" ]; then
  source ~/.linux/apps/optional/flacon.sh
elif [ "$ITEM" == "flac-tools" ]; then
  source ~/.linux/apps/optional/flac-tools.sh
elif [ "$ITEM" == "tenacity" ]; then
  source ~/.linux/apps/optional/tenacity.sh
elif [ "$ITEM" == "krita" ]; then
  source ~/.linux/apps/optional/krita.sh
elif [ "$ITEM" == "solaar" ]; then
  source ~/.linux/apps/optional/logi-solaar.sh
fi

source ~/.linux/bin/menu.sh
