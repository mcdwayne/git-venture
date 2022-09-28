#!/bin/bash
OLDIFS=$IFS
IFS=,

clear
echo "Chapter 4: git add"
echo ""
echo 'In this chapter we will look at one of the most important Git commands'
echo 'that is key to using Git - add'
echo ''
echo 'From the manual: git-add - Add file contents to the index'
echo ''
echo 'This naturally might lead to a question about what is "the index"? Glad you asked!'
echo ''
echo 'The index is a special file in the .git folder. This file acts as the staging area, where Git is tracking all the modified files you want to store as a commit.'
echo ''
echo 'Go ahead and try it, type "git add" (without the quotes):'
echo -n "$" && read GITINIT

if [[ "$GITINIT" != 'git add' ]]; then
    MATCH=0    
        while [[ $MATCH == 0 ]];     
        do
            echo 'that is not quite right, try again'
            read GITINIT
            if [[ "$GITINIT" == 'git add' ]]; then
                MATCH=1
            fi
        done
else
    echo ""
    echo 'Good Work '$USERNAME'!'
fi

echo ""
echo 'So what did that do?'
echo 'NOTHING!!!!'
echo ""
echo "You didn't actually tell it what to add. "
echo ""
echo 'We need to tell Git add exactly what to add. We can do this for a single file'
echo ""
echo "git add <file.ext>"
echo ""
echo 'Or for multiple files. Just name the files, like this:'
echo ""
echo "git add <file.ext> <file2.ext> <file3.ext>"
echo ""
echo 'You can even add EVERYTHING at once, but that is not a good idea in general...'
echo "But sometimes, well, it does not hurt, like when you only mod one file"
echo ""
echo "Let's go on to lesson 5"
echo ""
IFS=$OLDIFS
read -n 1 -s -r -p 'Press any key to continue or ctl+c to quit... '

