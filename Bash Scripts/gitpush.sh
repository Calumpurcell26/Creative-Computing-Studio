#!/bin/bash

echo "=== Git Publish === CC Studio ==="

# Display modified and untracked files
echo "Current status:"
git status -s

echo ""
# Stage all current changes
git add .
echo "All changes staged."

# Prompt for user input
read -p "Enter commit message: " COMMIT_MSG

# Check if commit message is provided
if [ -z "$COMMIT_MSG" ]; then
    echo "Error: Commit message cannot be empty. Aborting publish."
    exit 1
fi

# Execute commit and push
git commit -m "$COMMIT_MSG"
echo "Pushing changes to remote repository..."
git push origin main

echo "Publishing complete."
