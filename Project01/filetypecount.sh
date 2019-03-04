#!/bin/bash
shopt -s nullglob
for ext in py css html js hs sh; do
  	files=( *."$ext" )
	case $ext in
		py)
			printf 'Python: %d\n' "${#files[@]}"
			;;
		css)
			printf 'CSS: %d\n' "${#files[@]}"
			;;
		html)
			printf 'HTML: %d\n' "${#files[@]}"
			;;
		js)
			printf 'JavaScript: %d\n' "${#files[@]}"
			;;
		hs)
			printf 'Haskell: %d\n' "${#files[@]}"
			;;
		sh)
			printf 'Bash: %d\n' "${#files[@]}"
			;;
	esac
  	# now we can loop over all the files having the current extension
done
