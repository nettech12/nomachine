sudo apt install expect
USER=adityaopxd

expect -c '
           spawn passwd $USER
           expect "New password: "
           send "123456\r"
           expect "Retype new password"
           send "123456\r"
           expect eof
           '
