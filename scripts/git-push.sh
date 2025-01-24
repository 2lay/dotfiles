#!/usr/bin/env bash

# Prompt for commit message
read -p "Enter commit message: " commit_msg

# Check if commit message is empty
if [ -z "$commit_msg" ]; then
    echo "Commit message cannot be empty."
    exit 1
fi

# Stage all changes
git add .

# Check if there are any changes to commit
if [[ -z $(git status -s) ]]; then
    echo "No changes to commit."
    exit 0
fi

# Commit with the message
git commit -m "$commit_msg"

# Check if the commit is a duplicate of the latest remote commit
if git diff HEAD origin/main --quiet; then
    echo "Latest commit already exists. Skipping push."
    exit 0
fi

# Push to main branch
git push origin main