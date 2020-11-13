#!/usr/bin/env bash
WID=`xdotool search "Wyeb." | head -1`
xdotool windowsize $WID 500 500
