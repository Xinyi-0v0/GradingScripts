#!/bin/bash

# Get the directory name from the command line argument
dir_name=$1
root_dir=$(pwd)
#Iterate through all subdirectories int the directory
for dir in */; do
    # Change into the subdirectory
    root_dir=$(pwd)
    cd "$dir$dir_name"

    # Run "npm install"
    npm install
    # Catch error
    if [ $? -ne 0 ]; then
        echo "********* Warning ************* "
        echo " $dir : there is something wrong."
        echo "******************************* "
    fi

    cd $root_dir

done
