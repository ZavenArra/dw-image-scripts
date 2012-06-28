#!/bin/bash
find  . *[0-9]-[0-9]* -exec ~/image-scripts/tile.sh {} \;
