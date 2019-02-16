#Has been covered in class
#Original code scrapped. Found this little beauty that does the job just right.

#Sample found online, credits to https://unix.stackexchange.com/questions/146760/count-files-in-a-directory-by-extension, user @Kit
#TODO: Come up with something more original, and figure out how this one actually works.
#

#find . -type f | sed -e 's/.*\.//' | sort | uniq -c | sort -n | grep -Ei '(tiff|bmp|jpeg|jpg|png|gif)$'
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
