#!/usr/bin/env bash

# prompt for commit message
read -p "Enter commit message: " commit_msg

# check if commit message is empty
if [ -z "$commit_msg" ]; then
    echo "Commit message cannot be empty."
    exit 1
fi

# stage all changes
git add .

# commit with the message
git commit -m "$commit_msg"

# push to main branch
git push origin main
