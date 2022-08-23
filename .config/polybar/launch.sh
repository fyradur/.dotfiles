##!/bin/bash 
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar upper 2>&1 | tee -a /tmp/polybar1.log & disown
polybar lower 2>&1 | tee -a /tmp/polybar2.log & disown
