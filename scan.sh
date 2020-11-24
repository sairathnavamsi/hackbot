airmon-ng check kill

airmon-ng start wlan0mon

echo "Enter the adapter name:"
read monitor

airmon-ng start $monitor

echo "Detected networks:"
sleep 3
airodump-ng $monitor

echo "Enter the BSSID:"
read bssid

echo "Enter the channel:"
read chan


sleep 4
sudo airodump-ng --bssid $bssid -c $chan -w handshake.cap $monitor
