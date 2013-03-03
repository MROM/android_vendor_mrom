#!/bin/bash

if test -d out; then
	echo "ERROR: out sidecroty found!!!"
	exit
fi

for device in `cat vendor/mrom/build/device.txt`; do
	echo "building $device..."
	./makeMROM.sh $device	
done
