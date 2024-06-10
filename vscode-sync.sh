# git clone https://github.com/pmburov/linux

cp ./vscode/settings.json ~/.config/Code/User/settings.json
cp -r ./vscode/snippets ~/.config/Code/User/
cat ./vscode/extensions.txt | xargs -n 1 code --install-extension
