#!/bin/sh
# if [ -z "$*" ]; then echo "No args"; exit 0 fi

youtube-dlc -x --embed-thumbnail -o  "%(artist)s - %(playlist_title)s/%(playlist_index)s_%(track)s.%(ext)s" "$1"
