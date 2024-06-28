AFF=$(gum input --placeholder "Absolute path to your Affinity Photo 2 installation .exe file" --width 80)
if [ "$AFF" == "" ]; then
  echo 'Empty'
else
  echo $AFF
fi
