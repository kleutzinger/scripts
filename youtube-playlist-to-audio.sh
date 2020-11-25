#!/usr/bin/env bash
youtube-dlc -x  -o  "%(playlist_index)s_%(title)s.%(ext)s" "$1"
