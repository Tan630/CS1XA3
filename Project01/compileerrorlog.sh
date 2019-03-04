#!/bin/bash
echo "" > ~/CS1XA3/Project01/logs/compile_fail.log

for file in $(find ~/ -type f ) ; do
errlog=$(mktemp)
errlog2=$(mktemp)
  	if [[ $file =~ \.py$ ]]
	then
		python $file 2> "$errlog"
		if [[ -s "$errlog" ]]; then
		echo $file >> ~/CS1XA3/Project01/logs/compile_fail.log
		fi
	fi

	if [[ $file =~ \.hs$ ]]
	then
                haskell $file 2> "$errlog2"
                if [[ -s "$errlog2" ]]; then
                echo $file >> ~/CS1XA3/Project01/logs/compile_fail.log
                fi
	fi
  	# now we can loop over all the files having the current extension
done
