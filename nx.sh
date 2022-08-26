#!bin/sh
echo "========"
echo "UPDATING"
echo "========"
sudo apt-get update && sudo apt-get install -y vim xterm pulseaudio cups && clear
echo "========"
echo "FILES"
echo "========"
sudo apt update -y
sudo apt install mate -y
sudo apt -y install wget
wget -nc https://download.nomachine.com/download/7.10/Linux/nomachine_7.10.1_1_amd64.deb
sudo apt install -f ./nomachine_7.10.1_1_amd64.deb && 
echo "d833ad52f92e5b3cc30c96f12686d97f *nomachine_7.10.1_1_amd64.deb"

sudo sed -i "s|#EnableClipboard both|EnableClipboard both |g" /usr/NX/etc/server.cfg
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/nxlogin.sh && chmod +x nxlogin.sh && ./nxlogin.sh
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/tcp.sh && bash tcp.sh 
rm -rf /var/lib/apt/lists/*
