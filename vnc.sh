#!bin/sh
sudo apt update -y
sudo apt install mate -y
sudo apt-get install -y wget curl
sudo apt install expect -y
wget -nc https://download.nomachine.com/download/7.10/Linux/nomachine_7.10.1_1_amd64.deb
sudo apt install -f ./nomachine_7.10.1_1_amd64.deb
sudo apt install firefox-esr -y
sudo apt-get update && sudo apt-get install -y vim xterm pulseaudio cups
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/user.sh && bash user.sh
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/ngrok.sh && bash ngrok.sh
