#!/bin/bash
if [ "$2" ==  "" ]
then 
  echo "Please specify target path as second argument"
  exit
fi
TARGETFILENAME=`expr "$1" : '\(.*[0-9]*-[0-9]*\)'`
echo "$2""$TARGETFILENAME"".jpg"
convert "$1" -quality 60 -strip "$2""$TARGETFILENAME"".jpg"
