#!bin/sh
DEBIAN_FRONTEND=noninteractive
NOMACHINE_PACKAGE_NAME=nomachine_7.1.3_1_amd64.deb
NOMACHINE_BUILD=7.1
NOMACHINE_MD5=d833ad52f92e5b3cc30c96f12686d97f
sudo apt update -y
sudo apt install mate -y
sudo apt-get install -y wget curl

wget -nc https://download.nomachine.com/download/7.10/Linux/nomachine_7.10.1_1_amd64.deb
sudo apt install -f ./nomachine_7.10.1_1_amd64.deb


sudo apt-get update && sudo apt-get install -y vim xterm pulseaudio cups
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/user.sh && bash user.sh
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/ngrok.sh && bash ngrok.sh
