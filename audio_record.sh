#!/bin/bash/

TIME=$(read -r 4<config.txt)
PATH=$(read -r 7<config.txt)
VOLUME=$(read -r 10<config.txt)

arecord -f dat --duration=$TIME $PATH

