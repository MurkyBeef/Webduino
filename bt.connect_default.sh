#!/bin/bash/
MAC=$(read -r 4<config.txt)
if [bluetoothctl] ; then
	connect $MAC
	exit
else 
	bluetoothctl
	connect $MAC
fi
