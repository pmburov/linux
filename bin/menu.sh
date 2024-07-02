if [ $# -eq 0 ]; then
	SUB=$(gum choose "Launch" "Font" "Install" "Tweak" "Help"  --height 7 --header "" | tr '[:upper:]' '[:lower:]')
	# SUB=$(gum choose "Theme" "Font" "Install" "Update" --height 8 --header "" | tr '[:upper:]' '[:lower:]')
else
	SUB=$1
fi

[ -n "$SUB" ] && source ~/.linux/bin/$SUB.sh
