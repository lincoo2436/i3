#!/usr/bin/env bash
#xinput --set-prop 'eGalax\ Inc.\ eGalaxTouch\ EXC7903-02v10' 'Coordinate Transformation Matrix'0 -1 1 -1 0 1 0 0 1
xinput --set-prop '9' 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
xinput --set-prop '13' 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
sleep 1
xrandr --output LVDS1 --rotate left
#xinput --set-prop 'SynPS/2\ Synaptics\ TouchPad' 'Coordinate Transformation Matrix' 0 -1 1 -1 0 1 0 0 1
