#!/bin/zsh
for i in 1 2 3 4
do
    echo "Value of i is $i"
done

# Another example
max=10
for (( i=2; i <= $max; ++i ))
do
    echo "$i"
done
