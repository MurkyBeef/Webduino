#!/bin/sh
#Discover bluetooth devices by executing this file (./BT_discover.sh)

bluetoothctl
agent on
default-agent
scan on

#you will need to manually pair, use (pair MAC_ADDRESS) then (exit)
#pairing only needs to happen once, after that you can edit the shell script connect.sh
