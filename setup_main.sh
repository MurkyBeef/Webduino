#!/bin/bash

systemctl stop connman
wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf -Dnl80211&
wpa_cli wps_pin any >> pinVal.txt
wpa_cli -ip2p-wlan0-0 p2p_get_passphrase >> passphraseVal.txt
ifconfig p2p-wlan0-0 192.168.1.1 up
dnsmasq -x /var/run/dnsmasq.pid-p2p-wlan0-0 -i p2p-wlan0-0 -F192.168.1.11,192.168.1.99
echo "Main Board Setup Complete"
echo "see pinVal.txt and passphraseVal.txt for randomly generated passwords"

