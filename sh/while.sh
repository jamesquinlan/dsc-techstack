#!/bin/zsh

INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
    echo "Enter file name or 'bye' to quit"
    read INPUT_STRING
    echo "You typed: $INPUT_STRING"
    touch $INPUT_STRING.php
done
