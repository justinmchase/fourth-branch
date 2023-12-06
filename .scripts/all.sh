#!/bin/bash

# Remove all.md if it exists
if [ -f all.md ]; then
    rm all.md
fi

# Find all .md files in the current directory and its subdirectories
for file in $(find . -name "*.md")
do
    # Append the content of the current .md file to all.md
    cat $file >> all.md
    # Add a "---" separator to all.md
    echo -e "\n---\n" >> all.md
done