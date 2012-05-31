#!/bin/bash
if [ "$2" ==  "" ]
then 
  echo "Please specify target path as second argument"
  exit
fi
TARGETFILENAME=`expr "$1" : '\(.*[0-9]*-[0-9]*\)'`
echo "$2""$TARGETFILENAME"".jpg"
convert "$1" -resize 1526x2048^ "$2""$TARGETFILENAME"".jpg"
