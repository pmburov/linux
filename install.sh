# --- Prerequisits ---
sudo apt update -y
sudo apt install -y curl git unzip

# Run installers
for script in ~/.linux/apps/*.sh; do source $script; done

source ~/.linux/settings.sh
