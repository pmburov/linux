# --- Prerequisits ---
sudo apt update -y
sudo apt install -y curl git unzip
sudo apt install -y build-essential
# --- flatpak ---
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Run installers
for script in ~/.linux/apps/*.sh; do source $script; done

source ~/.linux/settings.sh
