cat <<EOF >~/.local/share/applications/Photo2.desktop
[Desktop Entry]
Name=Photo 2
Icon=$HOME/.linux/apps/optional/affinity/affinity_photo_2.svg
Comment=
Categories=Graphics
Terminal=false
Type=Application
Exec=rum ElementalWarrior-8.14 $HOME/.wineAffinity wine "$HOME/.wineAffinity/drive_c/Program Files/Affinity/Photo 2/Photo.exe"
EOF


