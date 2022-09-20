#!/bin/bash
OLDIFS=$IFS
IFS=,

clear
echo "Chapter 4: git add"
echo ""
echo 'In this chapter we will look at one of the most important Git commands'
echo 'that is key to using Git - add'
echo ''
echo 'From the manual: git-init - Create an empty Git repository or reinitialize an existing one.'
echo ''
echo 'Go ahead and try it, type "git init" (without the quotes):'
echo -n "$" && read GITINIT

if [[ "$GITINIT" != 'git init' ]]; then
    MATCH=0    
        while [[ $MATCH == 0 ]];     
        do
            echo 'that is not quite right, try again'
            read GITINIT
            if [[ "$GITINIT" == 'git init' ]]; then
                MATCH=1
            fi
        done
else
    echo ""
    echo 'Good Work '$USERNAME'!'
fi

echo ""
echo 'So what did that do?'
echo 'If you have Git installed and do this inside any folder on your computer, then a special folder gets created'
echo 'That folder is called .git'
echo ""
echo 'Here is what the .git folder for this repo looks like on your machine:'
echo ""
ls -a .git
echo ""
echo 'you can run this yourself by typing "ls -a .git" in a folder Git is tracking.'
echo ""
echo 'There is a lot of stuff to unpack there, but that is a lesson for another day...'
echo ""
echo 'For now, just know you have created this folder and have alerted Git that it should know about the folder in question.'
echo ""
echo "Let's go on to lesson 2"
echo ""
IFS=$OLDIFS
read -n 1 -s -r -p 'Press any key to continue or ctl+c to quit... '

