# --- Prerequisits ---
sudo apt update -y
sudo apt install -y curl git unzip
sudo apt install -y build-essential

# Run installers
for script in ~/.linux/apps/*.sh; do source $script; done

source ~/.linux/settings.sh
