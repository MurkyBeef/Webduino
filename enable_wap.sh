#!/bin/sh
systemctl stop connman
ifconfig eth0 up
dhclient eth0
ifconfig eth0
modprobe -r dhd
modprobe dhd op_mode=2
ifconfig wlan0 192.168.1.1 up
dnsmasq -C /etc/dnsmasq.conf
./aproute.sh
hostapd /etc/hostapd/hostapd.conf -B
echo "Access Point Online"
