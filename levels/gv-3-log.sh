#!/bin/bash
OLDIFS=$IFS
IFS=,

clear
echo "Chapter 3: git log"
echo ""
echo 'Looking at your Git history of commits commands you will run often.'
echo 'it is a completely safe command you can run as much as you like!'
echo ''
echo 'From the manual:  git-log - Show commit logs.'
echo 'But what does that mean???'
echo ''
echo 'Go ahead and try it, type "git log" (without the quotes):'
echo -n "$" && read GITLOG

if [[ "$GITLOG" != 'git log' ]]; then
    MATCH=0    
        while [[ $MATCH == 0 ]];     
        do
            echo 'that is not quite right, try again'
            read GITLOG
            if [[ "$GITLOG" == 'git log' ]]; then
                MATCH=1
            fi
        done
else
    echo ""
    echo -e '\033[3mcommit 3f4444c6a4c2e545234133ee4be75ea2ee1e4898\033[0m'
    echo -e '\033[3mAuthor: Dwayne <1dwayne.mcdaniel@gmail.com>\033[0m'
    echo -e '\033[3mDate:   Fri Jan 15 09:53:55 2022 -0600\033[0m'
    echo ''
    echo -e '\033[3m init chapter and base logic vo.1\033[0m'
    echo ''
    echo "------------------------------------------------------"
    echo "------------------------------------------------------"
    
fi

echo 'Git log is your commit history'
echo 'As you can see, you are on the default "main" branch.  We will dig into branching later on.'
echo ""
echo 'And since you have only initialized the folder so far, there is nothing to commit.'

echo ""
echo 'You are going to use git status a lot, as in every chapter moving ahead.'
echo "This was just a quick intro"
echo ""
echo "Let's go on to lesson 3"
echo ""
IFS=$OLDIFS
read -n 1 -s -r -p 'Press any key to continue or ctl+c to quit... '
./levels/gv-4-add.sh
