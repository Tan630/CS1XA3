printf "________________________________________________________ \n Greetings, user $USER on $HOSTMANE:\n" #TODO: Prettify User Interface
cd ~/CS1XA3
printf "Codes executed from:"
pwd

input="Something"
features="filetypecount.sh | dummyfeature2"
#TODO: Inplement TODO scanner

while : ; do
    echo "Features avaiable: " $features
    echo -n "Please enter name of the bash script you would like to execute: Enter 'quit' to exit. "
    read input
    if [ -z "input" ]
        then break
    fi
#TODO: use codes that utilize #
    case $input in
        filetypecount.sh)
            echo "Executing filetypecount.sh\n\n"
	    /bin/bash ~/CS1XA3/Project01/filetypecount.sh

            ;;
        dummyfeature2)
            echo "Executing fumyfeature\n\n"
            ;;
        quit)
            break
            ;;
	*)
	    echo "The feature you have requested is currently not available:( Come back later! \n\n"
    esac
done #TODO: Reconstruct cases, cover more conditions.
echo "Program existed"
