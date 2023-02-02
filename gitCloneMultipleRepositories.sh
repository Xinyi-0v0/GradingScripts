#!/bin/bash

# Define the file path to the text file
text_file=repositories.txt

# Read the repository URLs from the text file
repo_urls=$(cat $text_file)

# # Clone each repository into a target directory
for repo_url in $repo_urls; do
    git clone "$repo_url"
done
