#!/bin/bash

# Navigate to the _api directory
cd "/Users/rob/@Sync/tek.pub/_api" || exit 1

# Loop through all HTML files
for file in *.html; do
    # Skip if no HTML files exist
    [[ -f "$file" ]] || continue
    
    # Create a temporary file
    temp_file=$(mktemp)
    
    # Process the file
    awk '
    BEGIN { frontmatter_count = 0; processed = 0 }
    /^---$/ { 
        frontmatter_count++
        print $0
        # If this is the second --- (closing frontmatter), add a blank line
        if (frontmatter_count == 2 && processed == 0) {
            print ""
            processed = 1
        }
        next
    }
    { print $0 }
    ' "$file" > "$temp_file"
    
    # Check if any changes were made by comparing line counts
    original_lines=$(wc -l < "$file")
    new_lines=$(wc -l < "$temp_file")
    
    if [ "$new_lines" -gt "$original_lines" ]; then
        # Replace the original file with the modified version
        mv "$temp_file" "$file"
        echo "Added space after frontmatter in $file"
    else
        # Remove temp file if no changes were needed
        rm "$temp_file"
        echo "No changes needed for $file (space may already exist)"
    fi
done

echo "Finished processing HTML files in /_api directory"