#!/bin/bash

export JAVA_HOME=~/android/jdk1.6.0_33

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

#if ! diff vendor/mrom/build/buildspec.mk build/buildspec.mk; then
#	cp vendor/mrom/build/buildspec.mk build/buildspec.mk
#fi

if ! diff vendor/mrom/build/core/build_id.mk build/core/build_id.mk; then
	cp vendor/mrom/build/core/build_id.mk build/core/build_id.mk
fi

#export CM_BUILDTYPE=EXPERIMENTAL

if [ "$1" == "" ]; then
	echo "echo $0 {device}"
	exit
fi

device=$1
mv out.$device out

. build/envsetup.sh

brunch $device

mv out out.$device
