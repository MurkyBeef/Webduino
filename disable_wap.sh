#!/bin/sh
killall hostapd
killall dnsmasq
modprobe -r dhd
modprobe dhd op_mode=0
ifconfig wlan0 up
if [ -f "/usr/lib/system/wpa_supplicant.service"];
then
	systemctl restart wpa_supplicant
fi