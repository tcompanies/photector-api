#!/bin/bash

# if port 8000 is in use, set this to a free local port
PYPORT=8000 # default SimpleHTTPServer port is 8000

which python
if [ $? -ne 0 ]; then
    echo "Python not installed."
    exit 1
fi

# check if port is in use
lsof -i -P -n | grep ":${PYPORT} (LISTEN" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Port ${PYPORT} is already in use"
    exit 1
fi

# start python local server
python -m SimpleHTTPServer &
sleep 1

which google-chrome
if [ $? -eq 0 ]; then
    echo "opening: google-chrome http://localhost:${PYPORT}/index.html"
    google-chrome "http://localhost:${PYPORT}/index.html" > /dev/null 2>&1
else
    echo "Use your browser to open http://localhost:${PYPORT}/index.html"
fi
