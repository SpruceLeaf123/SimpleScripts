#!/bin/bash

# If a user has an idea they want to think about later, they can use this script. It shows a simple window which allows a user to write it down. Then the idea gets written to a text file "QuickIdeas" in the home directory of the user (including the time of its creation). The user may change the location by editing the variable "location". Inspired by https://pwlk.pl/produktywnosc-polecane-aplikacje-i-narzedzia/ (section "Skróty w iOS").
# Requires zenity.

location="$HOME"

moment=$(date)
idea=$(zenity --title "Enter Idea" --entry)
echo "$moment $idea" >> $location/QuickIdeas
