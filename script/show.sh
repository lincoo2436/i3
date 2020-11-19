#!/usr/bin/env bash
num=`xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}' | sed 's/0x//g'` 
wmctrl -l | grep "$num" | sed 's/  / /' | cut -d " " -f 4- | nl -w 3 -n rn | sed -r 's/^([ 0-9]+)[ \t]*(.*)$/\aArch - \2/'| awk '{print $1 $2 $3 "  " $NF}'
