#!/bin/bash

clear
echo 'Welcome to Git-Venture, a text based way to learn Git'
echo ""
echo 'This is a primitive game, so once you quit, you start over here next time'
echo ""
echo 'You can start at the beginning or choose a chapter to jump to'
echo ""
echo 'But first...'
echo ""

if [ -z "$1" ]; then
	echo -n 'What is your name? ' && read USERNAME
else  
	USERNAME=$1  
fi

echo 'Hello' $USERNAME
echo ""
export USERNAME

if [ -z "$2" ]; then
	echo -n 'Pick a chapter to begin: ' && read CHAPTERSELECT
else  
	CHAPTERSELECT=$2  
fi

case $CHAPTERSELECT in
    1)
        ./levels/gv-1-init.sh
        ;;
    2) 
        echo 'Level 2'
        ;;
    *)
        echo "pick a level"
        ;;
esac

echo 'DONE WITH MAIN SCRIPT'

# if [[ "$CHAPTERSELECT" -eq 1 ]]; then 
#     ./levels/gv-1.sh
# else 
#     echo "I don't understand.  I need a number please..." echo -n 
# fi