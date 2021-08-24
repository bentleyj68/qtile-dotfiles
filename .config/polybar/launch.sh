#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

while pgrep  -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---> $(date)" | tee -a /tmp/polybar1.log
polybar top 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
