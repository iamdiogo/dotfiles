#!/bin/bash

if type "xrandr"; then
  monitors=$(xrandr --query | grep " connected" | cut -d" " -f1);
  if [[ $monitors == *"HDMI-1"* ]]; then
    xrandr --output HDMI-1 --mode $(xrandr --query | grep -A1 "HDMI-1 connected" | grep "  " | xargs | cut -d " " -f1) --above LVDS-1
  elif [[ $monitors == *"VGA-1"* ]]; then
    xrandr --output VGA-1 --mode $(xrandr --query | grep -A1 "VGA-1 connected" | grep "  " | xargs | cut -d " " -f1) --above LVDS-1
  fi
fi

feh --bg-scale $HOME/Pictures/Wallpapers/wall.jpg
