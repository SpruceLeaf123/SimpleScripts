#!/bin/bash

# Probably takes a screenshot of all monitors and saves it as PNG file. Please change the variable "location" to change the place where the screenshots must be saved. The file name contains the moment the screenshot was taken.
# Requires maim.

location="$HOME/Pictures/Drop/"
if [[ -d "$location" ]]
then
	maim "$location/$(date +"%Y.%m.%d %H:%M:%S %Z - %A").png"
	notify-send -t 1000 "Screenshot probably successful."
else
	notify-send -t 1000 "Directory not found."
fi
