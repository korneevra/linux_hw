#1/bin/bash

dir=$1

if [ -z $dir ]
then 
	echo "Not directory name"
	exit 1
fi

if [ ! -d $dir ]
then
	echo "Not sach directory"
	exit 1
fi

rm -v $dir/*.bak $dir/*.tmp $dir/*.backup
