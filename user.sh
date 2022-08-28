#editable files 
#mount -rw -o remount /
#ls /home
#read -p "Your pc username: " USER
#passwd $USER
sudo apt install expect -y
mount -rw -o remount /
ls /home

expect -c '
           spawn passwd
           expect "New password: "
           send "123456\r"
           expect "Retype new password: "
           send "123456\r"
           expect eof
           '


sudo /etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
