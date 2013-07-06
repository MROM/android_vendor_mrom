#!/bin/bash

export PATH=${JAVA_HOME}:$PATH

function check_cm_prebuilts {
	if ! test -f vendor/cm/proprietary/Term.apk; then
        	vendor/cm/get-prebuilts
	fi
	}
export -f check_cm_prebuilts

vendor_path=vendor/mrom

if ! test -d $vendor_path/scripts; then
	echo "script must be executed from repo root"
	exit
fi

check_cm_prebuilts

if [ "$1" == "" ]; then
	echo "echo $0 {device}"
	exit
fi

device=$1
mv out.$device out

# Setup Linaro symlinks
if [ "$2" == "4.7" ]; then
	echo using Linaro 4.7
	LINARO_DIR=linaro-4.7
else 
	echo using Linaro 4.6
	LINARO_DIR=linaro-4.6
fi
cd prebuilts/gcc/linux-x86/arm
if test -h arm-eabi-4.6; then
	rm arm-eabi-4.6
fi
ln -s $LINARO_DIR arm-eabi-4.6
if test -h arm-linux-androideabi-4.6; then
	rm arm-linux-androideabi-4.6
fi
ln -s $LINARO_DIR arm-linux-androideabi-4.6
cd ../../../../
# end Linaro setup

. build/envsetup.sh

brunch $device

mv out out.$device
