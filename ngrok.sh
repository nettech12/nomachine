wget -nc -O ng.sh https://raw.githubusercontent.com/kmille36/Docker-Kali-Desktop-NoMachine/main/ngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "Go to: https://dashboard.ngrok.com/get-started/your-authtoken"
clear
./ngrok tcp --region ap 4000 &>/dev/null &
sleep 1
if curl --silent --show-error http://127.0.0.1:4040/api/tunnels  > /dev/null 2>&1; then echo OK; else echo "Ngrok Error! Please try again!" && sleep 1 && goto ngrok; fi
clear
echo IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' 
