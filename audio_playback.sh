#!/bin/bash/
set -x
PATH=$(read -r 7<config.txt)

aplay $PATH

echo "Playing $PATH"
