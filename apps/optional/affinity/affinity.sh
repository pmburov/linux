# Build local custom Wine without interfering with system-wide version
sudo apt install -y gcc-mingw-w64 gcc-multilib libasound2-dev libcups2-dev libdbus-1-dev libfontconfig-dev libfreetype-dev libgl-dev libgnutls28-dev libgphoto2-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev libosmesa6-dev libpcap-dev libpulse-dev libsane-dev libsdl2-dev libudev-dev libunwind-dev libusb-1.0-0-dev libvulkan-dev libx11-dev libxcomposite-dev libxcursor-dev libxext-dev libxfixes-dev libxi-dev libxrandr-dev libxrender-dev ocl-icd-opencl-dev samba-dev
sudo apt install -y winetricks
sudo apt install -y flex bison
git clone https://gitlab.com/xkero/rum $HOME/Documents/rum
sudo cp $HOME/Documents/rum/rum /usr/local/bin/rum
cd $HOME/Documents
git clone https://gitlab.winehq.org/ElementalWarrior/wine.git ElementalWarrior-wine
cd ElementalWarrior-wine
git switch affinity-photo2-wine8.14
mkdir winewow64-build/ wine-install/
cd winewow64-build/
../configure --prefix="$HOME/Documents/ElementalWarrior-wine/wine-install" --enable-archs=i386,x86_64
echo 'Grab some tea and snaks, it will take a good while 🫖☕☕☕'
# make --jobs 4
make install
# Set up Wine for Affinity
sudo mkdir /opt/wines
sudo cp --recursive "$HOME/Documents/ElementalWarrior-wine/wine-install" "/opt/wines/ElementalWarrior-8.14"
sudo ln -s /opt/wines/ElementalWarrior-8.14/bin/wine /opt/wines/ElementalWarrior-8.14/bin/wine64
rum ElementalWarrior-8.14 $HOME/.wineAffinity wineboot --init
rum ElementalWarrior-8.14 $HOME/.wineAffinity winetricks dotnet48 corefonts
rum ElementalWarrior-8.14 $HOME/.wineAffinity wine winecfg -v win11
sudo cp --recursive $HOME/.linux/apps/optional/affinity/winmetadata "$HOME/.wineAffinity/drive_c/windows/system32/WinMetadata"
# AFF=$(gum input --placeholder "Absolute path to your Affinity Photo 2 installation .exe file" --width 80)
# rum ElementalWarrior-8.14 $HOME/.wineAffinity wine $AFF
# rum ElementalWarrior-8.14 $HOME/.wineAffinity winetricks renderer=vulkan
# rum ElementalWarrior-8.14 $HOME/.wineAffinity wine "$HOME/.wineAffinity/drive_c/Program Files/Affinity/Photo 2/Photo.exe"
source ~/.linux/apps/optional/affinity/install.sh
