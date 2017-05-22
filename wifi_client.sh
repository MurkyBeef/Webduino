#!/bin/sh
systemctl start wpa_supplicant
dhclient wlan0
ifconfig wlan0
echo "Setup Complete, Artik Connected to Wifi Network!"