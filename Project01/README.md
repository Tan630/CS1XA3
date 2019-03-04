README.md

Features implemented:
1. Script input / feature selection
	Upon running project_analyze.sh as bash script, user will be prompted to enter commands. Each command will execute corresponding feature.

2. File Type Count
	Upon execution this script will output the amounts of HTML, Javascript, CSS, Python, Haskell and Bash files under the directory.

3. Create TODO Log
	Upon execution this script will put each line in every file in repo with the tag #TODO into a file todo.log

4. Create merge log
	Upon execution this script will put all commit hashes where merge is mentioned into merge.log

5. Delete Temporary Files
	Upon execution this script will find and delete all untracked files ending with .tmp.
