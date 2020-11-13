#!/usr/bin/env bash
xrandr --output LVDS1 --rotate normal
sleep 1
#xinput --set-prop 'eGalax\ Inc.\ eGalaxTouch\ EXC7903-02v10' 'Coordinate Transformation Matrix'0 -1 1 -1 0 1 0 0 1
xinput --set-prop '9' 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1 
xinput --set-prop '13' 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1
#xinput --set-prop 'SynPS/2\ Synaptics\ TouchPad' 'Coordinate Transformation Matrix' 0 -1 1 -1 0 1 0 0 1
