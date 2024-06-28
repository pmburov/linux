AFF=$(gum input --placeholder "Absolute path to your Affinity Photo 2 installation .exe file" --width 80)
if [ "$AFF" == "" ]; then
  echo "Path can't be empty"
else
  rum ElementalWarrior-8.14 $HOME/.wineAffinity wine $AFF
  rum ElementalWarrior-8.14 $HOME/.wineAffinity winetricks renderer=vulkan
  source ~/.linux/apps/optional/affinity/Photo.desktop.sh
fi
