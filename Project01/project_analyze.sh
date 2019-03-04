#!/bin/bash
printf "________________________________________________________ \n Hello, user $USER \n" #TODO: Prettify User Interface
cd ~/CS1XA3
printf "Codes executed from:"
pwd

input="Placeholder"
features="filetypecount   todologs   mergelogs   deletetempfiles   compileerrorlog   functionalfiles"
#TODO: Inplement TODO scanner

while : ; do
    printf "Features avaiable: \n"
    printf "\-\- %s\n" $features
    printf "Please enter name of the bash script you would like to execute: Enter 'quit' to exit. "
    read input
    if [ -z "input" ]
        then break
    fi
#TODO: use codes that utilize #
    case $input in
        filetypecount)
            printf 'Executing filetypecount.sh\n\n'
	    /bin/bash ~/CS1XA3/Project01/filetypecount.sh
            ;;
        todologs)
            printf 'Executing todologs.sh\n\n'
	    /bin/bash ~/CS1XA3/Project01/todologs.sh
	    ;;
	mergelogs)
	    printf 'Executing mergelogs.sh\n\n'
	    /bin/bash ~/CS1XA3/Project01/mergelogs.sh
	    ;;
	deletetempfiles)
	    printf 'Execute deletetempfiles.sh\n\n'
	    /bin/bash ~/CS1XA3/Project01/deletetempfiles.sh
            ;;
	compileerrorlog)
	    printf 'Execute compileerrorlog.sh\n\n'
	    /bin/bash ~/CS1XA3/Project01/deletetempfiles.sh
	    ;;
	functionalfiles)
	    printf 'Execute functionalfiles.sh\n\n'
	    /bin/bash ~/CS1XA3/Project01/functionalfiles.sh
        quit)
            break
            ;;
	*)
	    printf "The feature you requested is currently unavaliable :( Come back later! \n\n"
    esac
done #TODO: Reconstruct cases, cover more conditions.
printf "Program existed\n"
