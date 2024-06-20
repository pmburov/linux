# --- Emby ---
# cd ~/Downloads
# wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.8.8.0/emby-server-deb_4.8.8.0_amd64.deb
# sudo dpkg -i emby-server-deb_4.8.8.0_amd64.deb
# cd -
source ~/.linux/apps/optional/emby/docker-compose.yaml.sh
docker pull emby/embyserver:latest
