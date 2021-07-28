#!/bin/bash


# Requires gnome-screenshot. Allows the user to draw the area on the screen and take its screenshot. The screenshot then gets saves as a PNG file into the folder "Drop" in the Pictures directory in the user's home directory. The file name contains the moment the screenshot was taken.

data=$(moment)
person=$(whoami)
gnome-screenshot -a -f "/home/$person/Pictures/Drop/$moment.png"
notify-send -t 1000 "Screenshot probably successful."
