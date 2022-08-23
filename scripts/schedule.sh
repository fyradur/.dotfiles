#!/bin/sh

underline_color="%{u#99c2ff}%{+u}"
emacsclient -e '()' &> /dev/null && message=$(emacsclient -e '(apollo/polybar-agenda/fetch)' | sed 's/\\n/\
/g' | awk '/now -/&& getline, 0' | grep Scheduled | sed s/Scheduled://g | sed s/TODO//g | sed s/"-[0-9]*:[0-9][0-9]"/""/g | tr -s ' '|  cut -d " " -f 3- | head -n 1
) &> /dev/null  || message="Start emacs for schedule" 
echo ${message}
