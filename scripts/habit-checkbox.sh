#!/bin/sh

emacsclient -e '()' &> /dev/null && habit_status=$(emacsclient -e '(apollo/polybar-habit/update-read-state)' | cut -d '"' -f 2) &> /dev/null  || habit_status="" 
echo ${habit_status}
