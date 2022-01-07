#!/bin/bash
OLDIFS=$IFS
IFS=,

clear
echo "Chapter 2: git status"
echo ""
echo 'In this chapter we will look at a Git commands you will run often.'
echo 'it is a completely safe command you can run as much as you like!'
echo ''
echo 'From the manual:  git-status - Show the working tree status.'
echo 'But what does that mean???'
echo ''
echo 'Go ahead and try it, type "git status" (without the quotes):'
echo -n "$" && read GITINIT

if [[ "$GITINIT" != 'git status' ]]; then
    MATCH=0    
        while [[ $MATCH == 0 ]];     
        do
            echo 'that is not quite right, try again'
            read GITINIT
            if [[ "$GITINIT" == 'git status' ]]; then
                MATCH=1
            fi
        done
else
    echo ""
    echo 'On branch main' 
    echo 'nothing to commit, working tree clean'
fi

echo ""
echo 'Git status explains the state of the repository at any given time.'
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

