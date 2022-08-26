#!/bin/sh
sudo groupadd -r adi -g 433 \
&& useradd -u 431 -r -g adi -d /home/adi -s /bin/bash -c "adi" adi \
&& sudo adduser adi sudo \
&& mkdir /home/adi \
&& sudo chown -R adi:adi /home/adi \
&& echo adi':'123456 | chpasswd
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
