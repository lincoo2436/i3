#!/usr/bin/bash 

# -----------------------------------------------------------------------------
# Info:
#   author:    Miroslav Vidovic
#   file:      books-search.sh
#   created:   13.08.2017.-08:06:54
#   revision:  ---
#   version:   1.0
# -----------------------------------------------------------------------------
# Requirements:
#   rofi
# Description:
#   Use rofi to search my books. 
# Usage:
#   books-search.sh
# -----------------------------------------------------------------------------
# Script:

# Books directory
Project_DIR=~/Documents/project.txt

# Save find result to F_ARRAY
#readarray -t F_ARRAY <<< "$(find "$BOOKS_DIR" -type f -name '*.pdf')"

# Associative array for storing books
# key => book name
# value => absolute path to the file
# BOOKS['filename']='path'
project_process=$(cat $Project_DIR | fzf)
project_select=$(sed -n "/$project_process/{n;p;}" $Project_DIR)

#declare -A BOOKS 

# Add elements to BOOKS array
#get_books() {
#    for i in "${!F_ARRAY[@]}"
#    do
#        path=${F_ARRAY[$i]}
#        file=$(basename "${F_ARRAY[$i]}")
#        BOOKS+=(["$file"]="$path")
#    done
#}

# List for rofi
#gen_list(){
#    for i in "${!BOOKS[@]}"
#    do
#      echo "$i"
#    done
#}

main() {
#  get_books
#  book=$( (gen_list) | rofi -dmenu -i -fuzzy -only-match -location 0 -p "Book > " )
#  book=$( (gen_list) | fzf )
if [ $project_select == "" ];then
	exit 0
else
	echo "Please input number 1 is ranger, 2 is firefox, 3 is 直接跳转目录, 4 is wps, 5 is wpp, 6 is wyeb"
	read i
	case $i in
	1) ranger "$project_select"
		;;
	2) firefox "$project_select"
		;;
	3) cd "$project_select"
		sleep 0.5
		;;
	4) wps "$project_select"
		;;
	5) wpp "$project_select"
		;;
	6) wyeb "$project_select"
		;;

	esac
fi
}

main 
exit 0
