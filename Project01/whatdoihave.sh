#!/bin/bash
echo "" > ~/CS1XA3/Project01/logs/compile_fail.log

for file in $(find ~/ -type f ) ; do
  	if [[ $file =~ \.py$ ]]
	then
		echo $file
	fi
	if [[ $file =~ \.css$ ]]
        then
                echo $file
        fi
	if [[ $file =~ \.js$ ]]
        then
                echo $file
        fi
	if [[ $file =~ \.html$ ]]
        then
                echo $file
        fi
	if [[ $file =~ \.hs$ ]]
        then
                echo $file
        fi
	if [[ $file =~ \.sh$ ]]
        then
                echo $file
        fi
	if [[ $file =~ \.java$ ]]
        then
                echo $file
        fi
	if [[ $file =~ \.c$ ]]
        then
                echo $file
        fi
  	# now we can loop over all the files having the current extension
done
