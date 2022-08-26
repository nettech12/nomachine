#!bin/sh
DEBIAN_FRONTEND=noninteractive
NOMACHINE_PACKAGE_NAME=nomachine_5.2.11_1_amd64.deb
NOMACHINE_MD5=d697e5a565507d522380c94d2f295d07
apt-get update && apt-get install -y vim xterm pulseaudio cups curl
sudo apt-get -y update && sudo apt-get -y && sudo apt-get clean
curl -fSL "http://download.nomachine.com/download/5.2/Linux/${NOMACHINE_PACKAGE_NAME}" -o nomachine.deb \
&& echo "${NOMACHINE_MD5} *nomachine.deb" | md5sum -c - \
&& dpkg -i nomachine.deb \
&& groupadd -r nomachine -g 433 \
&& useradd -u 431 -r -g nomachine -d /home/nomachine -s /bin/bash -c "NoMachine" nomachine \
&& adduser nomachine sudo \
&& mkdir /home/nomachine \
&& chown -R nomachine:nomachine /home/nomachine \
&& echo 'nomachine:nomachine' | chpasswd
apt-get install -y python3-software-properties software-properties-common wget xdg-utils libpango1.0-0 fonts-liberation
add-apt-repository ppa:webupd8team/tor-browser
# RUN apt-get update -y && apt-get install -y tor firefox libreoffice htop nano git vim tor-browser
apt-get update -y && apt-get install -y tor firefox libreoffice htop nano git vim tor-browser
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/nxserver.sh && bash nxserver.sh
https://raw.githubusercontent.com/nettech12/nomachine/main/ngrok.sh && bash ngrok.sh
