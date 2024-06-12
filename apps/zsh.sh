# --- Zsh ---
sudo apt install -y zsh
chsh -s $(which zsh)


# --- Oh My Zsh ---
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# --- Oh My Zsh Theme ---
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc


# Copy configs
cp ~/.linux/configs/zsh/.p10k.zsh ~/.p10k.zsh
cp ~/.linux/configs/zsh/.zshrc ~/.zshrc
