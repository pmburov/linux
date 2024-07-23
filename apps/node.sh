# --- Node ---
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# source ~/.linux/configs/node-nvm-export.sh
# nvm install 22
# nvm use 22
/home/linuxbrew/.linuxbrew/bin/brew install node@20
echo 'export PATH="/home/linuxbrew/.linuxbrew/opt/node@20/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="/home/linuxbrew/.linuxbrew/opt/node@20/bin:$PATH"' >> ~/.zshrc
