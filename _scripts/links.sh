# Navigate to the _api directory
cd "/Users/rob/@Sync/tek.pub/_api" || exit 1

# Loop through all HTML files
for file in *.html; do
    # Skip if no HTML files exist
    [[ -f "$file" ]] || continue
    
    # Extract filename without extension
    filename="${file%.html}"
    
    # Create the reference line with the filename as the slug
    reference_line="You can see more detail here: https://tek.pub/details/${filename}"
    
    # Check if the line already exists to avoid duplicates
    if ! grep -q "You can see more detail here:" "$file"; then
        # Append a blank line and the reference line
        echo "" >> "$file"
        echo "$reference_line" >> "$file"
        echo "Added reference to $file"
    else
        echo "Reference already exists in $file, skipping"
    fi
done

echo "Finished processing HTML files in /_app directory"