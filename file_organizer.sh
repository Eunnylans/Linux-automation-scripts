#!/bin/bash
# File Organizer Script - fully working

# Prompt user for directory
read -p "Enter the directory path to organize: " DIR

# Check if directory exists
if [[ ! -d "$DIR" ]]; then
    echo "Directory does not exist!"
    exit 1
fi

# Define target folders
IMAGES="$DIR/images"
DOCS="$DIR/documents"
LOGS="$DIR/logs"

# Create folders if they don't exist
mkdir -p "$IMAGES" "$DOCS" "$LOGS"

# Initialize counters
img_count=0
doc_count=0
log_count=0

# Loop through all files in the directory
for file in "$DIR"/*; do
    # Skip directories
    [[ -d "$file" ]] && continue

    case "$file" in
        *.jpg|*.jpeg|*.JPG|*.JPEG)
            mv "$file" "$IMAGES" && ((img_count++))
            ;;
        *.txt)
            mv "$file" "$DOCS" && ((doc_count++))
            ;;
        *.log)
            mv "$file" "$LOGS" && ((log_count++))
            ;;
    esac
done

# Print summary
echo "File organization complete!"
echo "JPG files moved: $img_count"
echo "TXT files moved: $doc_count"
echo "LOG files moved: $log_count"
