# --- Penpot ---
mkdir ~/.penpot
cd ~/.penpot
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml
echo 'Penpot docker config installed'
echo 'Installing docker images and stuff'
sudo docker compose -p penpot -f docker-compose.yaml up -d
gum spin --spinner dot --title "Waiting for containers to spin up" -- sleep 15
xdg-open http://localhost:9001 > /dev/null
cp ~/.linux/apps/optional/penpot/penpot.desktop ~/.local/share/applications/penpot.desktop
