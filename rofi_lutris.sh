#!/bin/sh
GAMES=$(lutris -j -l)
NAMES=$(echo "$GAMES" | jq -r '.[]["slug"]')
CHOISE=$(echo "$NAMES" | rofi -dmenu -p Lutris)
if [ -n "$CHOISE" ]
then
    exec xdg-open "lutris:rungame/$CHOISE"
fi
