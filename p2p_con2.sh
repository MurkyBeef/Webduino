#!/bin/sh

systemctl stop connman
wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf -Dnl80211&
wpa_cli p2p_find 10
echo "User must handle final connection steps, see p2p.txt for more information."
