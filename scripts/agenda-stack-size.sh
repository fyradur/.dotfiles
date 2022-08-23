#!/bin/sh

emacsclient -e '()' &> /dev/null && agenda_message=$(emacsclient -e '(apollo/polybar-agenda/todo-size-read)' | cut -d '"' -f 2) &> /dev/null  || agenda_message="-" 
echo ${agenda_message}
