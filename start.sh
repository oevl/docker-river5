#!/bin/sh

# This script will place any config files from the host into the
# application and then start the app.

if [ -f /config/config.json ]; then
  echo "Copying config into app"
  cp /config/config.json .
fi

# Check to see if we have files inside lists
if [ $(ls -A /config/lists | wc -l) -gt 0 ]; then
  echo "Copying lists into app"
  rm -f ./lists/*
  cp -R /config/lists/* ./lists
fi

echo "Starting River5"

node river5.js
