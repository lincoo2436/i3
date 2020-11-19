#!/usr/bin/env bash

i=""
i=$(echo -e "marks\nwin\nrun\nfavor\nbook\nurl\nfile\nmouse\n"| dmenu -b -p "请输入" -fn "Terminus:24")
case $i in
	win)
	sh $HOME/.i3/script/dswitcher/dswitcher;;
	marks)
	termite -e "python $HOME/.i3/script/sample-marks.py" ;;
	book)
	termite -e "$HOME/.i3/script/books-search.sh" ;;
	url)
	termite -e "$HOME/.i3/script/fzfproject.sh" ;;
	favor)
	$HOME/.i3/script/favorlist;;
	mouse)
	$HOME/.i3/script/mouse.sh;;
	run)
	gorn -b -fn "Terminus:24";;
	file)
	dmenufm ~ ;;

esac
