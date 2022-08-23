#!/bin/sh

underline_color="%{u#99c2ff}%{+u}"
emacsclient -e '()' &> /dev/null && pomo_message=$(emacsclient -e '(apollo/org-pomodoro-time)' | cut -d '"' -f 2) &> /dev/null  || pomo_message="Start emacs for pomos" 
echo ${underline_color}${pomo_message}
