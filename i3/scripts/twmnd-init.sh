#!/bin/bash

if pgrep -x "twmnd" >/dev/null; then
  echo "twmnd is already running" 
else
  exec twmnd &
fi
