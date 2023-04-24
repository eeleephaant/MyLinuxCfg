#!/bin/bash

[ `pgrep -c watchdog.sh` -gt 1 ] && echo "no way" && exit 1

hasrunning=0

while true; do

if pgrep -x "dota2" >/dev/null; then
  if [ $hasrunning -eq 0 ]; then
    twmnc --title "[DOTA 2 Optimizer]" --pos top_right --fn googlesans --fs 16 -d 5000 --aot --bg 0 --fg=#22AF44 --size 30
    twmnc --title "$(sudo renice -n -20 $(pidof dota2))" --pos top_right --fn googlesans --fs 16 -d 5000 --aot --bg 0 --fg=#22AF44 --size 30
    twmnc --title "$(gamemoded -r$(pidof dota2))" --pos top_right --fn googlesans --fs 16 -d 5000 --aot --bg 0 --fg=#22AF44 --size 30
    hasrunning=1
    twmnc --title "DEBUG" --pos top_right -d 5000 --aot --bg 0 --size 30
    echo "trigger!~"
    sleep 1s
  else
    sleep 1s
  fi
else
  hasrunning=0
fi

done
