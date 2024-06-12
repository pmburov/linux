# keyboard behaviour
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape', 'ctrl:swap_lalt_lctl']"

gsettings set org.gnome.desktop.wm.keybindings close "['<Control>q']"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Control>grave']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Control>grave']"

gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# Dock settings
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'

gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
