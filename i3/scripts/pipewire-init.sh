#!/bin/bash

if pgrep -x "pipewire" >/dev/null; then
	echo "Pipewire is running..."
else
	echo "Start Pipewire!"
	exec pipewire &
fi
if pgrep -x "pipewire-pulse" >/dev/null; then
	echo "Pipewire-pulse is running..."
else
	echo "Start Pipewire-pulse!"
	exec pipewire-pulse &
fi
if pgrep -x "wireplumber" >/dev/null; then
	echo "Wireplumber is running..."
else
	echo "Start wireplumber!"
	exec wireplumber &
fi


