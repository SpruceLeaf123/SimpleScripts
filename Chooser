#!/bin/bash

# Imports a list of Firefox profiles from profiles.ini and draws a dmenu on the screen, allowing the user to choose one of them and run Firefox with them.
# Requires Firefox and dmenu.

person=$(whoami)
chosen=$(grep "Name\=" /home/$person/.mozilla/firefox/profiles.ini | awk -F"\=" '{print $2}' | sort | dmenu -i -fn Monospoace-18 -p "Choose")
if [ $chosen = ""]
then
	echo ""
else
	firefox -p "$chosen"
fi
