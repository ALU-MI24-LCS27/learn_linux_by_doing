#!/bin/bash
file="satelite_temperature_data.csv"
# Check if the file exists and is a regular file
if [ -f "$file" ]; then
    # Remove duplicates while keeping the header
    head -n 1 "$file" > "cleaned_$file"
    tail -n +2 "$file" | sort -u | uniq -u >> "cleaned_$file"
    mv "cleaned_$file" "$file"

    echo "Removed duplicates from $file."
else
    echo "No CSV files found in $ANALYZED_DIR."
fi
