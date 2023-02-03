#!/bin/bash

# Iterate through all subdirectories int the directory
for dir in */; do
    # Change into the subdirectory
    cd $dir

    # Get the name of the current Git branch
    current_branch=$(git symbolic-ref --short HEAD)

    # Check if the current branch is "main"
    if [ "$current_branch" != "main" ]; then
        git checkout main
    fi

    # Pull all change from remote repository
    git pull

    # Change back into the parent directory
    cd ..

done
