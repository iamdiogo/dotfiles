sleep 1

# terminate all running instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [ "$POLYBAR_MODE" -eq "1" ] && type "xrandr" ; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == 'eDP-1' ] || [ $m == 'eDP-1-1' ]; then
      echo $m
      echo 'flex end'
      MONITOR=$m polybar --reload flex &
    else
      echo $m
      MONITOR=$m polybar --reload main &
    fi
  done
else
  MONITOR="eDP-1" polybar --reload main_single &
fi
