# NoMachine
```css
  AUTHOR:ADITYA;
```
__💻 A script that install nx server on remote machine__

__⚠️ Don't run script under root__

# 💽 10gb free disk required 
```bash
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/vnc.sh
```
```bash
bash vnc.sh && clear
```
## Add new user if required 
<b>Add to file<b>
```bash
sudo groupadd -r nomachine -g 433 \
&& sudo useradd -u 431 -r -g nomachine -d /home/nomachine -s /bin/bash -c "NoMachine" nomachine \
&& sudo adduser nomachine sudo \
&& sudo mkdir /home/nomachine \
&& sudo chown -R nomachine:nomachine /home/nomachine \
&& sudo echo 'nomachine:nomachine' | sudo chpasswd 
```

## nomachine support
- linux[✅]
- windows[❌]
- android[✅]


## Donate xmr
```yml
4B1dXbphAhG5t6erRwsFQ3FnURzpZgwXMNQgpsFxhxF31L8aKuMXhn5XutWZMGxJWo78N7nkNEEAW4S4Gyi7djRUCD3ytv4
```
```diff
+ SUBSCRIBE ON YOUTUBE
```
