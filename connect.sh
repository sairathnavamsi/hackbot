echo "Enter victim's BSSID:"
read bssid

echo "Enter monitor name:"
read monitor

echo "Enter password:"
read pass

sudo wpa_passphrase $bssid $pass > /etc/wpa_supplicant.conf

sudo ip link set $monitor down
sudo ip link set $monitor up
sudo wpa_supplicant -B -i $monitor -c /etc/wpa_supplicant.conf -D wext
sudo dhclient $monitor