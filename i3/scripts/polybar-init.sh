#!/bin/bash

if pgrep -x "polybar" >/dev/null; then
	echo "Polybar is running"
	exit
fi
exec polybar &
