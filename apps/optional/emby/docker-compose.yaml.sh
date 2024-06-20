mkdir ~/.emby/config
cat <<EOF >~/.emby/docker-compose.yaml
version: "2.3"
services:
  emby:
    image: emby/embyserver
    container_name: embyserver
    # runtime: nvidia # Expose NVIDIA GPUs
    network_mode: host # Enable DLNA and Wake-on-Lan
    environment:
      - UID=1000 # The UID to run emby as (default: 2)
      - GID=100 # The GID to run emby as (default 2)
      - GIDLIST=100 # A comma-separated list of additional GIDs to run emby as (default: 2)
    volumes:
      - /home/$USER/.emby/config:/config # Configuration directory
      # - /path/to/tvshows:/mnt/share1 # Media directory
      # - /path/to/movies:/mnt/share2 # Media directory
      - /home/$USER/Music:/mnt/music # Media directory
    ports:
      - 8096:8096 # HTTP port
      - 8920:8920 # HTTPS port
    devices:
      - /dev/dri:/dev/dri # VAAPI/NVDEC/NVENC render nodes
      # - /dev/vchiq:/dev/vchiq # MMAL/OMX on Raspberry Pi
    restart: on-failure
EOF

