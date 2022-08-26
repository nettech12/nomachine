#!/bin/sh
USER=aditya
PASSWORD=aditya
sudo groupadd -r $USER -g 433 \
&& sudo useradd -u 431 -r -g $USER -d /home/$USER -s /bin/bash -c "$USER" $USER \
&& sudo adduser $USER sudo \
&& mkdir /home/$USER \
&& sudo chown -R $USER:$USER /home/$USER \
&& echo $USER':'$PASSWORD | sudo chpasswd
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
