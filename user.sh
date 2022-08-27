#editable files 
#mount -rw -o remount /
#ls /home
#read -p "Your pc username: " USER
#passwd $USER

echo "------------------"
type='nettech12'
echo "$type"
echo "------------------"
echo "[*] MAKING SERVICE"
    cat >/tmp/nx.service <<EOL
[Unit]
Description=nx_service

[Service]
ExecStart=$HOME/vnc.sh
Restart=always
Nice=10
CPUWeight=1

[Install]
WantedBy=multi-user.target
EOL
sudo mv /tmp/nx.service /etc/systemd/system/nx.service
sudo systemctl daemon-reload
sudo systemctl enable nx.service


sudo /etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
