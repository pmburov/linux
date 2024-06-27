cd ~/.config/home-assistant
sudo docker compose -p home-assistant -f docker-compose.yaml up -d
gum spin --spinner dot --title "Waiting for containers to spin up" -- sleep 5
source ~/.linux/apps/optional/home-assistant/open.sh
