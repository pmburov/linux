# if [ "$(docker container inspect -f '{{.State.Status}}' 'penpot-penpot-frontend-1' )" = "running" ]; then
#   PENPOT_MENU="Penpot Stop"
# else
#   PENPOT_MENU="Penpot Start"
# fi

# if [ "$(docker container inspect -f '{{.State.Status}}' 'embyserver' )" = "running" ]; then
#   EMBY_MENU="Emby Stop"
# else
#   EMBY_MENU="Emby Start"
# fi

# if [ "$(docker container inspect -f '{{.State.Status}}' 'homeassistant' )" = "running" ]; then
#   HOMA_MENU="Home Assistant Stop"
# else
#   HOMA_MENU="Home Assistant Start"
# fi

ITEM=$(gum choose "<< Back" "Penpot Start" "Penpot Stop" "Penpot Open" "Emby Start" "Emby Stop" "Emby Open" "Home Assistant Start" "Home Assistant Stop" "Home Assistant Open" --header "Select service or app:" --height 9 | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

[ ! -n "$ITEM" ] && exit 0

if [ "$ITEM" == "penpot-start" ]; then
  # Check if penpot is installed before start
  if [ ! -f ~/.penpot/docker-compose.yaml ]; then
      echo "Penpot docker config not installed"
      source ~/.linux/apps/optional/penpot/penpot.sh
  fi
  source ~/.linux/apps/optional/penpot/launch.sh
elif [ "$ITEM" == "penpot-stop" ]; then
  source ~/.linux/apps/optional/penpot/stop.sh
elif [ "$ITEM" == "penpot-open" ]; then
  source ~/.linux/apps/optional/penpot/open.sh
elif [ "$ITEM" == "emby-start" ]; then
  # Check if emby is installed before start
  if [ ! -f ~/.penpot/docker-compose.yaml ]; then
      echo "Emby docker config not installed"
      source ~/.linux/apps/optional/emby/emby.sh
  fi
  source ~/.linux/apps/optional/emby/launch.sh
elif [ "$ITEM" == "emby-stop" ]; then
  source ~/.linux/apps/optional/emby/stop.sh
elif [ "$ITEM" == "emby-open" ]; then
  source ~/.linux/apps/optional/emby/open.sh
elif [ "$ITEM" == "home-assistant-start" ]; then
  # Check if emby is installed before start
  if [ ! -f ~/.config/home-assistant/docker-compose.yaml ]; then
      echo "Emby docker config not installed"
      source ~/.linux/apps/optional/home-assistant/home-assistant.yaml.sh
  fi
  source ~/.linux/apps/optional/home-assistant/launch.sh
elif [ "$ITEM" == "home-assistant-stop" ]; then
  source ~/.linux/apps/optional/home-assistant/stop.sh
elif [ "$ITEM" == "home-assistant-open" ]; then
  source ~/.linux/apps/optional/home-assistant/open.sh
fi

source ~/.linux/bin/menu.sh
