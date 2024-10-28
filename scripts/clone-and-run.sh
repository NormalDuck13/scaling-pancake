#!/bin/bash

# Get the repository URL from the query parameter
REPO_URL=$(echo "$1" | sed 's/^.*repo=//')

# Clone the repository
git clone "$REPO_URL" repo

# Navigate into the repository directory
cd repo || exit

# Check if index.html exists
if [ -f "index.html" ]; then
    # Launch index.html
    xdg-open index.html
else
    echo "index.html not found."
fi
