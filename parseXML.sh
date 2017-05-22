#!/bin/sh

$ name=$(xmlstarlet sel -t -m '//name[1]' -v . -n <example.xml)

echo $name

$ number=$(xmlstarlet sel -t -m '//number[1]' -v . -n <example.xml)

echo $number
