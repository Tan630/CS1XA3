printf "________________________________________________________ \n Greetings, user $USER on $HOSTMANE:\n"
cd ~/CS1XA3
printf "Codes executed from:"
pwd

input="Something"
features="TODO.sh | dummyfeature2"


while : ; do
    echo "Features avaiable: " $features
    echo -n "Please enter name of the bash script you would like to execute: Enter break to exit. "
    read input
    if [ -z "input" ]
        then break
    fi

    case $input in
        TODO.sh)
            echo "Executing TODO.sh\n\n"
	    sh TODO.sh
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
done 
echo "no inputs"
