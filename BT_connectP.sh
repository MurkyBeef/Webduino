#!/bin/sh

$ MAC=$(xmlstarlet sel -t -m '//Phone_MAC[1]' -v . -n <bluetooth.xml)

bluetoothctl
connect $MAC
exit