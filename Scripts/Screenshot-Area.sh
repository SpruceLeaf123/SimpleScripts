#!/bin/bash

# Allows the user to draw the area on the screen and take its screenshot. The screenshot then gets saved as a PNG file into the folder "Drop" in the Pictures directory in the user's home directory (if the directory does not exist, the screenshot might not be saved). The file name contains the moment the screenshot was taken.
# Requires gnome-screenshot.

moment=$(date +"%Y.%m.%d %H:%M:%S %Z - %A")
person=$(whoami)
gnome-screenshot -a -f "/home/$person/Pictures/Drop/$moment.png"
notify-send -t 1000 "Screenshot"
