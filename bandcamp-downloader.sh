#!/bin/sh
# if [ -z "$*" ]; then echo "No args"; exit 0 fi

youtube-dl -x -o "%(artist)s - %(playlist_title)s/%(playlist_index)s_%(track)s.%(ext)s" "$1"

#todo: add option of specifying artist / album if not provided and fix m3u tags
