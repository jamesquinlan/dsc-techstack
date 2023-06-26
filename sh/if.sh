#!/bin/zsh
# If statement

echo -n "Enter a number: "
read x
if [[ $x -gt 100 ]]
then
    echo "$x is greater than 100."
else
    pwd
fi

date
