# Install samba
sudo apt update
sudo apt install samba
# share direcory
mkdir ~/Share
# config
sudo echo '[sambashare]
    comment = Samba on Ubuntu
    path = ~/Share
    read only = no
    browsable = yes' >> /etc/samba/smb.conf

# restart service
sudo service smbd restart
# add samba to firewall
sudo ufw allow samba
# add password to current user
echo 'Add a password to user: '$USER
sudo smbpasswd -a $USER
# restart service
sudo service smbd restart
