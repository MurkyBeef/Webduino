#!/bin/sh
#Json setup for linux machine
#Run this program only once

wget http://stedolan.github.io/jq/download/linux32/jq
#wget http://stedolan.github.io/jq/download/linux64/jq	#for 64 bit sys
chmod +x ./jq
sudo cp jq /usr/bin