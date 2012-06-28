#!/bin/bash
#Args
# $1 = the filename to pad
# $2 = the ration - NOT IMPLEMENTED
FILENAME=$1
HEIGHT=`identify -format "%h" "$FILENAME"`
WIDTH=`identify -format "%w" "$FILENAME"`
echo Beginning WxH: $HEIGHT $WIDTH
TARGETHEIGHT=0
TARGETWIDTH=0
RATIO=2/3
REVERSERATIO=3/2 

COMPAREWIDTH=$(($HEIGHT * $RATIO))
if [ $WIDTH -gt  $COMPAREWIDTH ]
then 
  TARGETWIDTH=$WIDTH
  TARGETHEIGHT=$(($WIDTH * $REVERSERATIO))
else 
  TARGETHEIGHT=$HEIGHT
  TARGETWIDTH=$(($HEIGHT * $RATIO))
fi
echo $TARGETHEIGHT
echo $TARGETWIDTH
x="x"
suffix=".converted.tif"
echo $TARGETWIDTH$x$TARGETHEIGHT
convert "$FILENAME" -gravity center -crop $TARGETWIDTH$x$TARGETHEIGHT-0-0\! -background black -flatten "$FILENAME"$suffix
