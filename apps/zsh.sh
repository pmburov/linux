# --- Zsh ---
sudo apt install -y zsh
sudo chsh -s $(which zsh)

# --- Oh My Zsh ---
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy configs
cp ~/.linux/configs/zsh/.zshrc ~/.zshrc
