#!/bin/bash
TARGETDIR=$1
find * -type d -exec mkdir "$TARGETDIR"\{\} \;
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
slash="/"
find * -name *-*.* -exec "$DIR""$slash"resize.sh {} "$TARGETDIR" \;
find * -name thumb.jpg -exec cp {} "$TARGETDIR" \;
