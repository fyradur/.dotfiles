#!/bin/sh

emacsclient -e '(apollo/polybar-habit/update-read-points)' >/dev/null 2>&1
cat /home/john/.local/share/dijo/habit_record[auto].json | jq --arg date "$(date +%Y-%m-%d)" '.[] | select(.name == "HabitPoints") | .stats[$date]'
