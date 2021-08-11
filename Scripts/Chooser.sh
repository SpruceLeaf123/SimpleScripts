#!/bin/bash

# Imports a list of Firefox profiles from profiles.ini and draws a dmenu on the screen, allowing the user to choose one of them. After that choice has been made, Firefox with the seletected profile is being started.
# Requires Firefox and dmenu.

person=$(whoami)
all=$(grep "Name\=" /home/$person/.mozilla/firefox/profiles.ini | awk -F"\=" '{print $2}' | sort)
chosen=$( echo "$all" | dmenu -i -fn -18 -p "🌍 Internet")
if [[ $chosen = "" ]]
then
	notify-send -t 3000 "No profile selected."
else
	correct=$( echo "$all" | grep -x "$chosen" )
	if [[ $correct = "" ]]
	then
		notify-send -t 3000 "This profile apparently does not exist."
	else
		notify-send -t 3000 "Selected profile: $chosen"
		firefox -p "$chosen"
	fi
fi
