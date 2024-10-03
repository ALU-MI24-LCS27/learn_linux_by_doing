#!/bin/bash

# Define the path to the input file
input_file="./data/satelite_temperature_data.csv"

# Define the path to the output file
output_file="./analyzed/top-5-lowest-temperatures.csv"

# Sort the CSV file by the second column (temperature) and extract the top 5 lowest temperatures
# Assuming the 3rd column is the temperature

head -n 1 "$input_file" > "$output_file" # Add the header back to the output file
tail -n +2 "$input_file" | sort -k 3 -t ',' | head -n 5 >> "$output_file"

# Output the contents of the resulting file
cat "$output_file"
