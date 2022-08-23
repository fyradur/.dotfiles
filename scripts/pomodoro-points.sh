#!/bin/sh

underline_color="%{u#99c2ff}%{+u}"
emacsclient -e '()' &> /dev/null && pomo_message=$(emacsclient -e '(apollo/pomo-points/get-points)' | cut -d '"' -f 2) &> /dev/null  || pomo_message="-" 
echo ${underline_color}${pomo_message}
