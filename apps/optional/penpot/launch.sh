cd ~/.penpot
sudo docker compose -p penpot -f docker-compose.yaml up -d
gum spin --spinner dot --title "Waiting for containers to spin up" -- sleep 15
xdg-open http://localhost:9001 > /dev/null
