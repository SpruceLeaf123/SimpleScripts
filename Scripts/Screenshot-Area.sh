#!/bin/bash

# Allows the user to draw the area on the screen and take its screenshot. The screenshot then gets saved as a PNG file into the folder "Drop" in the Pictures directory in the user's home directory (if the directory does not exist, the screenshot might not be saved). The user may change the directory in which the screenshot is saved by editing the "location" variable. The file name contains the moment the screenshot was taken.
# Requires gnome-screenshot.

location=$($HOME/Pictures/Drop)

moment=$(date +"%Y.%m.%d %H:%M:%S %Z - %A")
gnome-screenshot -a -f "$location/$moment.png"
notify-send -t 1000 "Screenshot"
