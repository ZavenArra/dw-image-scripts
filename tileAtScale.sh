#!/bin/bash
#This script was created by Mike Lin
#See http://www.mikelin.ca/blog/2010/06/iphone-splitting-image-into-tiles-for-faster-loading-with-imagemagick/
file=$1
function tile() {
convert $file -scale ${s}%x -crop 256x256 \
-set filename:tile "%[fx:page.x/256]_%[fx:page.y/256]" \
+repage +adjoin "../../tiles/${file%.*}_${s}_%[filename:tile].${file#*.}"
}
s=$2
tile
