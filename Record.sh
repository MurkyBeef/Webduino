#!/bin/sh

$ time=$(xmlstarlet sel -t -m '//Time[1]' -v . -n <record.xml)
$ path=$(xmlstarlet sel -t -m '//Path[1]' -v . -n <record.xml)

arecord -f dat -d $time $path
echo "Recording Saved at: "
echo $path
