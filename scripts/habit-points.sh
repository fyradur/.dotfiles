#!/bin/sh

emacsclient -e '()' &> /dev/null && habit_points=$(emacsclient -e '(apollo/polybar-habit/update-read-points)' | cut -d '"' -f 2) &> /dev/null  || habit_points="-" 
echo ${habit_points}
