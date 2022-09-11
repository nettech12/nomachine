sudo groupadd -r nomachine -g 433 \
&& sudo useradd -u 431 -r -g nomachine -d /home/nomachine -s /bin/bash -c "NoMachine" nomachine \
&& sudo adduser nomachine sudo \
&& sudo mkdir /home/nomachine \
&& sudo chown -R nomachine:nomachine /home/nomachine \
&& sudo echo 'nomachine:nomachine' | sudo chpasswd 
