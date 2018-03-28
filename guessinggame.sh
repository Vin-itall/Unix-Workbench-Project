#!/usr/bin/env bash
# File: guessinggame.sh

Array=($(ls -d */))
Dcount=${#Array[@]}
Dguess=0

function guessChecker {
    # if statement used
    if [[ $1 -lt $2 ]]
    then
    echo "echo Low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo High"
    fi
}

# loop is used
while [ $Dguess -ne $Dcount ]
do
echo "Guess The No. Of Directories"
# read used
read Dguess

$(guessChecker $Dguess $Dcount)

done
echo "Yes! You're Right"
