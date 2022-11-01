#!/bin/sh

emacsclient -e '()' &> /dev/null && agenda_message=$(emacsclient -e 'apollo/polybar-agenda/todo' | cut -d '"' -f 2) &> /dev/null  || agenda_message="Start emacs for current todo" 
echo ${agenda_message}
