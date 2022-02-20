#!/bin/bash

# Allows the user to draw the area on the screen and take its screenshot. The screenshot then gets saved as a PNG file into the folder "Drop" in the Pictures directory in the user's home directory. The file name contains the moment the screenshot was taken. Please change the variable "location" to change the place where the screenshots must be saved.
# Requires maim.

location="$HOME/Pictures/Drop/"
if [[ -d "$location" ]]
then
	maim -su "$location/$(date +"%Y.%m.%d %H:%M:%S %Z - %A").png"
	notify-send -t 1000 "Screenshot probably successful."
else
	notify-send -t 1000 "Directory not found."
fi
