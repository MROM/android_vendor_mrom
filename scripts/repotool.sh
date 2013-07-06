#!/bin/bash

if [ "$1" != "fetch" ] &&
	[ "$1" != "fetchtags" ] &&
	[ "$1" != "pushtags" ] &&
	[ "$1" != "merge" ] &&
	[ "$1" != "tag" ] &&
	[ "$1" != "checkout" ] &&
	[ "$1" != "list" ] &&
	[ "$1" != "status" ] &&
	[ "$1" != "push" ]; then
	echo "usage `basename $0` {fetch|fetchtags|merge|push|list|status|tag|checkout} {tag} [filter]"
	exit
fi

if [ "$1" == "tag" ] && [ "$2" == "" ]; then
	echo "usage `basename $0` {fetch|merge|push|tag} {tag}"
	exit
fi

if [ "$3" == "" ]; then
	repos=`cat android/default.xml | grep "MROM/" | awk '{ print $3 }' | awk -F= '{ print $2 }' | sed 's/"//g' | sed 's/>//'g | awk -F/ '{ print $2 }'`
else
	repos=`ls -d *$3*`
fi

if [ "$1" == "list" ]; then
	repos=`cat android/default.xml | grep "MROM/"`
	echo "$repos"
	exit
fi

for dir in $repos; do
	echo "$1 on '$dir' repo..."
	cd $dir
	if [ "$1" == "pushtags" ]; then
		git push --tags
	elif [ "$1" == "fetchtags" ]; then
		git fetch -t $2
	elif [ "$1" == "fetch" ]; then
		git fetch --all -t
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
