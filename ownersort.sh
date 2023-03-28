#!/bin/bash

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

filelist=$(ls $dir)

for file in $filelist
do
	owner=$(ls -l $dir/$file | awk '{print $3}')
	if [ ! -d $owner ]
	then
		mkdir $owner
		chown -R $owner:$owner $owner
	fi
	cp -p $dir/$file $owner
done
