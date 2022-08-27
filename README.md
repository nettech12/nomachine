# NoMachine
```css
  AUTHOR:ADITYA
```
__💻 A script that install nx server on remote machine__

__💽 10gb free disk required__

```bash
sudo su 
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/vnc.sh
```
```bash
bash vnc.sh && clear
```
## Add new user if required 
>[Add to file]
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
## forgot your root password
```cpp
mount -rw -o remount /
ls /home
passwd username
```
