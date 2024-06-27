# --- RazerGenie ---
echo 'deb http://download.opensuse.org/repositories/hardware:/razer/xUbuntu_24.04/ /' | sudo tee /etc/apt/sources.list.d/hardware:razer.list
curl -fsSL https://download.opensuse.org/repositories/hardware:razer/xUbuntu_24.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/hardware_razer.gpg > /dev/null
sudo apt update
sudo apt install -y razergenie
