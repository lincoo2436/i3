#!/usr/bin/env bash

i=""
i=$(echo -e "win\nrun\nfavor\nbook\nurl\n"| dmenu -b -p "请输入")
case $i in
	win)
	sh $HOME/.i3/script/dswitcher/dswitcher;;
	book)
	termite -e "$HOME/.i3/script/books-search.sh" ;;
	url)
	termite -e "$HOME/.i3/script/fzfproject.sh" ;;
	favor)
	$HOME/.i3/script/favorlist;;
	run)
	dmenu_run -b;;
esac
