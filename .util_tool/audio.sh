#!/bin/zsh


test=$(pacmd list-cards | grep "\active profile: <output:" | grep -Po "\:\K[a-zA-Z-]*(?=>)")

if [ "$test" = "analog-stereo" ]
then
	pactl set-card-profile 0 output:hdmi-stereo
else
	pactl set-card-profile 0 output:analog-stereo+input:analog-stereo
fi
