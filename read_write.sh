#!/bin/bash

# Input TSV file
input_file="AlphaMissense_aa_substitutions.tsv"

# Output TSV file
output_file="output.tsv"

# P00395, P00403, P00414, P00846, P03928, P03886, P03891, P03897, P03905, P03915, P03923, P03928

# Define the strings to search for in the first column
search_strings=("P00395" "P00403" "P00414" "P00846" "P03928" "P03886" "P03891" "P03897" "P03905" "P03915" "P03923" "P03928")

# Use grep to search for rows containing the pattern in the second column
#grep -P "^$search_pattern\s+\S+" "$input_file" > "$output_file"
#awk -F'\t' -v search="$search_pattern" '$1 == search' "$input_file" > "$output_file"

# Loop through each search string and use grep to extract matching rows
for search_string in "${search_strings[@]}"; do
    grep -E "^$search_string[[:space:]]" "$input_file" >> "$output_file"
done


echo "Matching rows saved to $output_file"
