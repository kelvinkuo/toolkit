#!/bin/bash

# Fetch the latest branch information
git fetch --prune

# List all branches that start with feat or fix
branches=$(git branch --list "feat*" "fix*")

# Check if there are any matching branches
if [ -z "$branches" ]; then
  echo "No branches found starting with 'feat' or 'fix'."
  exit 0
fi

# Delete each branch that matches the pattern
echo "Deleting branches:"
for branch in $branches; do
  echo "$branch"
  git branch -D "$branch"
done
