#editable files 
sudo -i
mount -rw -o remount /
ls /home
read -p "Your pc username: " USER
passwd $USER

sudo /etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
