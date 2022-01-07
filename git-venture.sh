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

echo "Chapter list:"
echo "  1 - git init"
echo "  2 - git status"
echo "  3 - git log"
echo "  4 - git add"
echo "  5 - git commit -m"
echo "  6 - git push"
echo "  7 - git pull"
echo ""

while ! [[ "$CHAPTERSELECT" =~ ^[0-7]+$ ]];
do 
    if [ -z "$2" ]; then
	    echo -n 'Pick a chapter to begin: ' && read CHAPTERSELECT
    else  
	    CHAPTERSELECT=$2  
fi
done

    case $CHAPTERSELECT in
        1)
            ./levels/gv-1-init.sh
            ;;
        2) 
            ./levels/gv-2-status.sh
            ;;
        3) 
            ./levels/gv-3-log.sh
            ;;
        4) 
            ./levels/gv-4-add.sh
            ;;
        5) 
            ./levels/gv-5-commit.sh
            ;;
        6) 
            ./levels/gv-6-push.sh
            ;;
        7) 
            ./levels/gv-7-pull.sh
            ;;
        *)
            echo "pick a level"
            ;;
    esac

echo 'DONE WITH MAIN SCRIPT'