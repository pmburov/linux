cd ~/.penpot
sudo docker compose -p penpot -f docker-compose.yaml up -d
gum spin --spinner dot --title "Waiting for containers to spin up" -- sleep 15
source ~/.linux/apps/optional/penpot/open.sh
