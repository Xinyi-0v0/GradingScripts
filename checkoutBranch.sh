#!/bin/bash

# Get the branch name from the command line argument
branch_name=$1

#Iterate through all subdirectories int the directory
for dir in */; do
	# Change into the subdirectory
	cd $dir
	# Check if the branch exists in the remote repository
	if git ls-remote --heads origin $branch_name | grep -q $branch_name; then
		# Check if the branch exists in the local repository
		if git show-ref --verify --quiet "refs/heads/$branch_name"; then
			# Check out the specificed branch
			git checkout $branch_name
		else
			# Create a local branch that tracks a remote branch in Git
			git checkout -t origin/$branch_name
		fi
		if [ $? -ne 0 ]; then
			# Get the current directory path
			current_dir=$(pwd)
			# Extract just the directory name
			dir_name=${current_dir##*/}
			echo "********* Warning ************* "
			echo " $dir_name : there is something wrong."
			echo "******************************* "
		fi
	# Go back to the parent directory
	else
		# Get the current directory path
		current_dir=$(pwd)
		# Extract just the directory name
		dir_name=${current_dir##*/}
		echo "********* Warning ************* "
		echo " $dir_name doesn't have this branch."
		echo "******************************* "

	fi
	cd ..
done
