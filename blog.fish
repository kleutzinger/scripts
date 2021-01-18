#!/usr/bin/env fish
# start a lektor instance and open browser
set BLOG_DIR ~/lektor/kev-project-lektor
set PORT 9001
# ping cannot check ports, use curl
curl localhost:9001 -s > /dev/null
if test $status -eq 0
    echo "already running, opening new tab"
    chromium "http://localhost:$PORT"
    exit 0
end

# start up server
cd $BLOG_DIR
source ../.venv/bin/activate.fish
cat ../.venv/bin/activate.fish
python -m pip -V
lektor server -p $PORT --browse
