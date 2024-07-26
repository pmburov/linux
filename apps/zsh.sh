# --- Zsh ---
sudo apt install -y zsh
# Set zsh as a default shell
sudo chsh -s $(which zsh)

# --- Oh My Zsh ---
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# --- oh-my-posh ---
/home/linuxbrew/.linuxbrew/bin/brew install jandedobbeleer/oh-my-posh/oh-my-posh
# Copy configs
cp ~/.linux/configs/zsh/.zshrc ~/.zshrc
