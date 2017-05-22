#!/bin/sh

$ MAC=$(xmlstarlet sel -t -m '//Speaker_MAC[1]' -v . -n <bluetooth.xml)

bluetoothctl
connect $MAC
exit

#This one has a different method for connection (need to fix this)