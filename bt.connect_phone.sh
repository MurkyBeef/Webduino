#!/bin/bash/
set -x
echo "Ensure that you have made your phone visible"
echo "as well as enabled bluetooth tethering to internet (not all phones support this.)"
echo "Program will now run connection program"
if [-a btKEY.txt] ; then
	KEY=$(read -r 1<btKEY.txt)
	connmanctl connect $KEY
fi
connmanctl
services >> config.txt
KEY=$(read -r 6<config.txt)
connect $KEY
exit

IP=$(read -r 8<config.txt)
ping $IP

