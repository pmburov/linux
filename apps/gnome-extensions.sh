# --- Gnome Shell extensions ---
sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-shell-extension-manager

array=( https://extensions.gnome.org/extension/3193/blur-my-shell/
https://extensions.gnome.org/extension/4167/custom-hot-corners-extended/
https://extensions.gnome.org/extension/3843/just-perfection/
https://extensions.gnome.org/extension/771/proxy-switcher/
https://extensions.gnome.org/extension/4548/tactile/
https://extensions.gnome.org/extension/6784/wiggle/
https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/ )

for i in "${array[@]}"
do
    EXTENSION_ID=$(curl -s $i | grep -oP 'data-uuid="\K[^"]+')
    VERSION_TAG=$(curl -Lfs "https://extensions.gnome.org/extension-query/?search=$EXTENSION_ID" | jq '.extensions[0] | .shell_version_map | map(.pk) | max')

    wget -O ${EXTENSION_ID}.zip "https://extensions.gnome.org/download-extension/${EXTENSION_ID}.shell-extension.zip?version_tag=$VERSION_TAG"

    gnome-extensions install --force ${EXTENSION_ID}.zip

    if ! gnome-extensions list | grep --quiet ${EXTENSION_ID}; then
        busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions org.gnome.Shell.Extensions InstallRemoteExtension s ${EXTENSION_ID}
    fi

    gnome-extensions enable ${EXTENSION_ID}
    rm ${EXTENSION_ID}.zip
done

sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell\@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/custom-hot-corners-extended\@G-dH.github.com/schemas/org.gnome.shell.extensions.custom-hot-corners-extended.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/just-perfection-desktop\@just-perfection/schemas/org.gnome.shell.extensions.just-perfection.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/tactile@lundal.io/schemas/org.gnome.shell.extensions.tactile.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
