#!bin/sh
DEBIAN_FRONTEND=noninteractive
NOMACHINE_PACKAGE_NAME=nomachine_7.1.3_1_amd64.deb
NOMACHINE_BUILD=7.1
NOMACHINE_MD5=d833ad52f92e5b3cc30c96f12686d97f
sudo apt update -y
sudo apt install mate -y
sudo apt-get install -y wget curl
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/ngrok.sh
sudo apt-get update && apt-get install -y vim xterm pulseaudio cups
curl -fSL "http://download.nomachine.com/download/${NOMACHINE_BUILD}/Linux/${NOMACHINE_PACKAGE_NAME}" -o nomachine.deb \
&& echo "${NOMACHINE_MD5} *nomachine.deb" | sudo md5sum -c - && sudo dpkg -i nomachine.deb && sudo sed -i "s|#EnableClipboard both|EnableClipboard both |g" /usr/NX/etc/server.cfg
sudo apt-get clean
sudo apt-get autoclean
groupadd -r nomachine -g 433 \
&& useradd -u 431 -r -g nomachine -d /home/nomachine -s /bin/bash -c "NoMachine" nomachine \
&& adduser nomachine sudo \
&& mkdir /home/nomachine \
&& chown -R nomachine:nomachine /home/nomachine \
&& echo 'nomachine:nomachine' | chpasswd 
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
bash ngrok.sh
