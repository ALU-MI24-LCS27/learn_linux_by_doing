#!/bin/bash
in_file="data/satelite_temperature_data.csv"
out_file="analyzed/country-heat_data.csv"
# Check if the file exists and is a regular file
if [ -f "$in_file" ]; then
	# Extract our countries data while keeping the header
	head -n 1 "$in_file" > "$out_file"
	grep -i "Rwanda\|Kenya" "$in_file" >> "$out_file"

	echo "Extracted Rwanda's and Kenya's data from $in_file."
else
	echo "No CSV files found."
fi
