TIMEZONE=$(cat /etc/timezone)

mkdir ~/.config/home-assistant
cat <<EOF >~/.config/home-assistant/docker-compose.yaml
name: home-assistant-app
services:
  home-assistant:
    container_name: homeassistant
    privileged: true
    restart: unless-stopped
    environment:
      # - TZ=MY_TIME_ZONE
      - TZ=$TIMEZONE
    volumes:
      - /home/$USER/.config/home-assistant:/config
      - /run/dbus:/run/dbus:ro
    network_mode: host
    image: ghcr.io/home-assistant/home-assistant:stable
EOF

