#!/bin/bash

# Takes a screenshot of one monitor (probably the main one) and saves it as PNG file into the folder "Drop" in the Pictures directory in the user's home directory. The file name contains the moment the screenshot was taken.
# Requires Scrot.

moment=$(date)
person=$(whoami)
scrot "/home/$person/Pictures/Drop/$moment.png"
notify-send -t 1000 "Screenshot probably successful."
