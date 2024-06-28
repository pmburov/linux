mkdir ~/.davinci
mkdir ~/.davinci/debs
sudo apt install -y libapr1t64 libaprutil1t64 libasound2t64 libglib2.0-0t64
# SKIP_PACKAGE_CHECK=1 ./DaVinci_Resolve_18.6.6_Linux.run

cd ~/Downloads

wget http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpango-1.0-0_1.50.6+ds-2_amd64.deb
dpkg-deb -x libpango-1.0-0_1.50.6+ds-2_amd64.deb ~/.davinci
# rm libpango-1.0-0_1.50.6+ds-2_amd64.deb
mv libpango-1.0-0_1.50.6+ds-2_amd64.deb ~/.davinci/debs

wget http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpangoft2-1.0-0_1.50.6+ds-2_amd64.deb
dpkg-deb -x libpangoft2-1.0-0_1.50.6+ds-2_amd64.deb ~/.davinci
# rm libpangoft2-1.0-0_1.50.6+ds-2_amd64.deb
mv libpangoft2-1.0-0_1.50.6+ds-2_amd64.deb ~/.davinci/debs

wget http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpangocairo-1.0-0_1.50.6+ds-2_amd64.deb
dpkg-deb -x libpangocairo-1.0-0_1.50.6+ds-2_amd64.deb ~/.davinci
# rm libpangocairo-1.0-0_1.50.6+ds-2_amd64.deb
mv libpangocairo-1.0-0_1.50.6+ds-2_amd64.deb ~/.davinci/debs

wget http://security.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/libgdk-pixbuf-2.0-0_2.42.8+dfsg-1ubuntu0.3_amd64.deb
dpkg-deb -x libgdk-pixbuf-2.0-0_2.42.8+dfsg-1ubuntu0.3_amd64.deb ~/.davinci
# rm libgdk-pixbuf-2.0-0_2.42.8+dfsg-1ubuntu0.3_amd64.deb
mv libgdk-pixbuf-2.0-0_2.42.8+dfsg-1ubuntu0.3_amd64.deb ~/.davinci/debs

cd -

cp ~/.davinci/usr/lib/x86_64-linux-gnu/lib* /opt/resolve/libs
