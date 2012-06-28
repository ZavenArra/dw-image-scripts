#!/bin/sh
#identify -format "<key>%f/key> <dict> <key>width</key> <string>%w</string> <key>height</key> <string>%h</string> </dict>"  [0-9]*-[0-9]*.jpg 
identify -format "<key>%f</key> <dict> <key>width</key> <string>%w</string> <key>height</key> <string>%h</string> <key>name</key> <string>%f</string> </dict>"  $1 
