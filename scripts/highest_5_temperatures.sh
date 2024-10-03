#!/bin/bash
in_file="./data/satelite_temperature_data.csv"
out_file="./analyzed/top-5-highest-temperatures.csv"

# get highest temps while keeping the header
head -n 1 "$in_file" > "$out_file"
cat $in_file | tail -n +2 | sort -k 3 -t ',' -r | head -n 5 >> "$out_file"

echo "5 Highest temperatures in $out_file."
