#!/bin/bash/
set -x
MAC=$(read -r 4<config.txt)
if [bluetoothctl] ; then
	pair $MAC
	exit
fi
