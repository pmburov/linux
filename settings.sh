# keyboard behaviour
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape', 'altwin:ctrl_alt_win']"

gsettings set org.gnome.desktop.wm.keybindings close "['<Shift><Control>q']"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Control>grave']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Control>grave']"
# gsettings set org.gnome.desktop.wm.keybindings toggle-application-view "['F4']"
dconf write /org/gnome/shell/keybindings/toggle-application-view "['F4']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-down "@as []"
dconf write /org/gnome/desktop/wm/keybindings/minimize "@as []"


gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# Dock settings
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'

# gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

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

# don't put display to sleep
dconf write /org/gnome/desktop/session/idle-delay "uint32 0"

dconf load /org/gnome/terminal/legacy/profiles:/ < ~/.linux/configs/gnome-terminal.dconf

# Theme and stuff

dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
dconf write /org/gnome/desktop/interface/gtk-theme "'Yaru-dark'"
dconf write /org/gnome/shell/extensions/dash-to-dock/show-mounts-network false
dconf write /org/gnome/shell/extensions/dash-to-dock/show-mounts-only-mounted true
dconf write /org/gnome/shell/extensions/ding/show-home false
dconf write /org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size 38

dconf write /org/gnome/desktop/peripherals/touchpad/click-method "'fingers'"

dconf write /org/gnome/shell/extensions/rounded-window-corners-reborn/border-width 1
dconf write /org/gnome/shell/extensions/rounded-window-corners-reborn/border-color "(1.0, 1.0, 1.0, 0.20)"

