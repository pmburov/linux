sudo apt install -y font-manager

mkdir -p ~/.local/share/fonts

cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaFont
cp CascadiaFont/*.ttf ~/.local/share/fonts
rm -rf CascadiaMono.zip CascadiaFont

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip
unzip Meslo.zip -d Meslo
cp Meslo/*.ttf ~/.local/share/fonts
rm -rf Meslo.zip Meslo

wget -O iafonts.zip https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.zip
unzip iafonts.zip -d iaFonts
cp iaFonts/iA-Fonts-master/iA\ Writer\ Mono/Static/iAWriterMonoS-*.ttf ~/.local/share/fonts
rm -rf iafonts.zip iaFonts

wget https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-mono%401.1.0/ibm-plex-mono.zip
unzip ibm-plex-mono.zip -d ibm-plex-mono
cp ibm-plex-mono/ibm-plex-mono/fonts/complete/ttf/*.ttf ~/.local/share/fonts
rm -rf ibm-plex-mono.zip ibm-plex-mono

fc-cache
cd -
