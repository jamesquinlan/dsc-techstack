#!/bin/zsh

# Remove Spaces 
for f in *\ *; do mv "$f"  "${f// /}"; done

# Replace Spaces with -
# for f in *\ *; do mv "$f"  "${f// /-}"; done;
