#!/bin/bash

# get path
path=$(dirname $HOME/music/"$(mpc --format='%file%' current)")

test -f "$path/cover.png" && cover="$path/cover.png"
test -f "$path/cover.jpg" && cover="$path/cover.jpg"

echo "$cover"
echo "$1"

# if there is no cover, don't show any picture
test -z "$cover" && dunstify "Now Playing :" "$(mpc --format '%title% - %artist%' current)"

# convert the cover to a smaller size
ffmpeg -i "$cover" -vf "scale=100:-1" /tmp/current_cover.png

# send the notification
dunstify -I /tmp/current_cover.png "$1 :" "$(mpc --format '%title% - %artist%' current)"

# remove the small cover
rm -f /tmp/current_cover.png
