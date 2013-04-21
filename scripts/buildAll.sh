#!/bin/bash

if test -d out; then
	echo "ERROR: out sidecroty found!!!"
	exit
fi

if [ "$1" == "clean" ]; then
	for device in `cat vendor/mrom/build/device.txt`; do
		echo -n "cleaning $device..."
		if test -d out.${device}; then
			rm -fr out.${device}/*
		fi
		echo "done"
	done
	exit
fi

for device in `cat vendor/mrom/build/device.txt`; do
	echo "building $device..."
	./makeMROM.sh $device > /tmp/build.${device}.txt 2>&1
done
