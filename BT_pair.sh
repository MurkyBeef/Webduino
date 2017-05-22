#!/bin/sh

$ MAC=$(xmlstarlet sel -t -m '//MAC_address[1]' -v . -n <bluetooth.xml)

bluetoothctl
pair $MAC
exit