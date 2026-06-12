#!/bin/bash
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
vol=$(pactl get-sink-volume @DEFAULT_SINK@ | awk 'NR==1 {print $5}' | tr -d '%')

if [[ "$muted" == "yes" ]]; then
  echo " muted"
else
  if (( vol < 30 )); then
    icon=""
  elif (( vol < 70 )); then
    icon=""
  else
    icon=""
  fi
  echo "$icon $vol%"
fi

