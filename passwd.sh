sudo apt install expect -y > /dev/null
mount -rw -o remount /
ls /home

expect -c '
           spawn passwd
           expect "New password: "
           send "123456\r"
           expect "Retype new password: "
           send "123456\r"
           expect eof
           '
