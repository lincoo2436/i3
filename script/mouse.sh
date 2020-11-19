#!/usr/bin/env bash

i=""
while :
do 
	i=$(echo -e "w\ns\na\nd\nj\nk\nq\n"| dmenu -b -p "请输入")
	case $i in
		w)
			xdotool mousemove_relative -- 0 -20 
			;;
		s)xdotool mousemove_relative -- 0 20 
			;;
		a)
			xdotool mousemove_relative -- -20 0
			;;
		d)xdotool mousemove_relative -- 20 0
			;;
		j)xdotool click 1 
		exit 0
			;;
		k)xdotool click 3
			;;
		u)xdotool click 4
			;;
		i)xdotool click 5
			;;
		q)
			exit 0  ;;
	esac

done
