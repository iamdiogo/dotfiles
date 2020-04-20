#!/bin/bash

if type "xrandr"; then
  monitors=$(xrandr --query | grep " connected" | cut -d" " -f1);
  if [[ $monitors == *"HDMI-1"* ]]; then
    xrandr --output HDMI-1 --mode $(xrandr --query | grep -A1 "HDMI-1 connected" | grep "  " | xargs | cut -d " " -f1) --above eDP-1
    xrandr --dpi 100
    xrdb $HOME/.Xresources
  elif [[ $monitors == *"VGA-1"* ]]; then
    xrandr --output VGA-1 --mode $(xrandr --query | grep -A1 "VGA-1 connected" | grep "  " | xargs | cut -d " " -f1) --above eDP-1
    xrandr --dpi 100
    xrdb $HOME/.Xresources
  else
    xrandr --output VGA-1 --off
    xrandr --output HDMI-1 --off
    xrandr --dpi 125
    xrdb $HOME/.Xresources_single
  fi
fi

# polybar-msg cmd restart
$HOME/.config/polybar/launch.sh

#feh --bg-scale $HOME/Pictures/Wallpapers/wall.jpg
