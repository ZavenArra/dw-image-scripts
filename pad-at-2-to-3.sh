#!/bin/bash
FILENAME=$1
HEIGHT=`identify -format "%h" "$FILENAME"`
WIDTH=`identify -format "%w" "$FILENAME"`
echo $HEIGHT
echo $WIDTH
TARGETHEIGHT=0
TARGETWIDTH=0
COMPAREWIDTH=$(($HEIGHT * 2 / 3))
if [ $WIDTH -gt  $COMPAREWIDTH ]
then 
  TARGETWIDTH=$WIDTH
  TARGETHEIGHT=$(($WIDTH * 3 / 2))
else 
  TARGETHEIGHT=$HEIGHT
  TARGETWIDTH=$(($HEIGHT * 2 / 3))
fi
echo $TARGETHEIGHT
echo $TARGETWIDTH
x="x"
suffix=".converted.tif"
echo $TARGETWIDTH$x$TARGETHEIGHT
convert "$FILENAME" -gravity center -crop $TARGETWIDTH$x$TARGETHEIGHT-0-0\! -background black -flatten "$FILENAME"$suffix
