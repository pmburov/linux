# Install samba
sudo apt update
sudo apt install -y samba
# share direcory
mkdir ~/Share
# config
echo "[sambashare]
    comment = Samba on Ubuntu
    path = /home/${USER}/Share
    read only = no
    browsable = yes" | sudo tee -a /etc/samba/smb.conf
# restart service
sudo service smbd restart
# add samba to firewall
sudo ufw allow samba
# add password to current user
echo 'Add a password to user: '$USER
sudo smbpasswd -a $USER
# restart service
sudo service smbd restart
