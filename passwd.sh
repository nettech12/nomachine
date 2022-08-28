sudo apt install expect -y
wget -nc https://raw.githubusercontent.com/nettech12/nomachine/main/new.sh


expect -c '
           spawn ./new.sh
           expect "New password: "
           send "123456\r"
           expect "Retype new password"
           send "123456\r"
           expect eof
           '
