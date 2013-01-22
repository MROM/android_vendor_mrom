#!/bin/bash

repos=`cat android/default.xml | grep "MROM/" | awk '{ print $3 }' | awk -F= '{ print $2 }' | sed 's/"//g' | sed 's/>//'g | awk -F/ '{ print $2 }'`

if [ "$1" != "fetch" ] &&
	[ "$1" != "merge" ] &&
	[ "$1" != "tag" ] &&
	[ "$1" != "checkout" ] &&
	[ "$1" != "list" ] &&
	[ "$1" != "status" ] &&
	[ "$1" != "push" ]; then
	echo "usage `basename $0` {fetch|merge|push|list|status|tag} {tag}"
	exit
fi

if [ "$1" == "tag" ] && [ "$2" == "" ]; then
	echo "usage `basename $0` {fetch|merge|push|tag} {tag}"
	exit
fi

if [ "$1" == "list" ]; then
	echo "$repos"
	exit
fi

for dir in $repos; do
	echo "$1 on '$dir' repo..."
	cd $dir
	if [ "$1" == "fetch" ]; then
		git fetch --all
	elif [ "$1" == "merge" ]; then
		git merge $2
	elif [ "$1" == "push" ]; then
		git push --all
		git push --tags
	elif [ "$1" == "tag" ]; then
		git tag $2 
	elif [ "$1" == "status" ]; then
		git status
	elif [ "$1" == "checkout" ]; then
		git checkout $2 
	else
		echo "invalid option"
	fi
	cd ..
done
