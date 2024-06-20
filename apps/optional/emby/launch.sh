cd ~/.emby
sudo docker compose -p penpot -f docker-compose.yaml up -d
gum spin --spinner dot --title "Waiting for containers to spin up" -- sleep 5
source ~/.linux/apps/optional/emby/open.sh
