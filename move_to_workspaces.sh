#!/bin/bash
# Set four workspaces
wmctrl -n 4

# Move window `firefox` to desktop 0, which is the first workspace (index starts at 0)

#wmctrl -r firefox -t 0
sleep 8 && wmctrl -r thunderbird -t 2 
#&& wmctrl -r Joplin -t 3
