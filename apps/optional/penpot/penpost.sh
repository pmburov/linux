# --- PenPot ---
mkdir ~/.penpot
cd ~/.penpot
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml
echo 'PenPot docker config installed'
echo 'Installing docker images and stuff'
sudo docker compose -p penpot -f docker-compose.yaml up -d
