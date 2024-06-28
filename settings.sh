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

dconf write /org/gnome/shell/extensions/custom-hot-corners-extended/monitor-0-bottom-left-0/action "'lock-screen'"
dconf write /org/gnome/shell/extensions/custom-hot-corners-extended/monitor-0-top-right-0/action "'toggle-overview'"
dconf write /org/gnome/shell/extensions/just-perfection/clock-menu-position 1
dconf write /org/gnome/shell/extensions/just-perfection/notification-banner-position 2
dconf write /org/gnome/shell/extensions/tactile/col-3 0
dconf write /org/gnome/shell/extensions/tactile/gap-size 4
dconf write /org/gnome/shell/extensions/tactile/layout-2-row-2 0
dconf write /org/gnome/shell/extensions/tactile/layout-2-col-1 2
dconf write /org/gnome/shell/extensions/tactile/layout-2-col-2 2

gsettings set org.gnome.mutter center-new-windows true
