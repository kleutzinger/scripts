#! /usr/bin/env fish
# run simple window manager commands on active window

set valid_args 'max' 'min'

if not contains $argv[1] $valid_args
    set msg (string join ', ' $valid_args)
    echo "required arguments: [$msg]"
    exit 1
end

if test $argv[1] = 'max'
    xdotool windowsize (xdotool getactivewindow) 100% 100%
    exit 0
end

if test $argv[1] = 'min'
    xdotool windowminimize (xdotool getactivewindow)
    exit 0
end

