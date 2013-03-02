#!/bin/bash

if test -d out; then
	echo "ERROR: out sidecroty found!!!"
	exit
fi

devices="d2att d2vzw d2spr d2tmo"

for device in $devices; do
	echo "building $device..."
	./makeMROM.sh $device	
done
