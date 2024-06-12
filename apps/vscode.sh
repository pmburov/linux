# --- VS Code ---
cd ~/Downloads
wget -O code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo apt install -y ./code.deb
rm code.deb
cd -
# User config
mkdir -p ~/.config/Code/User

cp ~/.linux/configs/vscode/settings.json ~/.config/Code/User/settings.json
cp -r ~/.linux/configs/vscode/snippets ~/.config/Code/User/
cat ~/.linux/configs/vscode/extensions.txt | xargs -n 1 code --install-extension
