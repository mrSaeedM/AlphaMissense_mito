#!/bin/bash

# Input TSV file
input_file="AlphaMissense_aa_substitutions.tsv"
# input_file="reduced_input.tsv"


# Output TSV file
output_file="AlphaMissense_mito_genes.tsv"
# output_file="dummy.tsv"


# Define the strings to search for in the first column
search_strings=('P00156' 'P00395' 'P00403' 'P00414' 'P00846' 'P03886' 'P03891' 'P03897' 'P03901' 'P03905' 'P03915' 'P03923' 'P03928' 'Q8IVG9')


# Use grep to search for rows containing the pattern in the second column
#grep -P "^$search_pattern\s+\S+" "$input_file" > "$output_file"
#awk -F'\t' -v search="$search_pattern" '$1 == search' "$input_file" > "$output_file"

# Loop through each search string and use grep to extract matching rows
# for search_string in "${search_strings[@]}"; do
#     grep -E "^$search_string[[:space:]]" "$input_file" >> "$output_file"
# done

# write a for loop that goes over a list and prints in elements
       

for pattern in "${search_strings[@]}"; do
    echo $pattern
    grep -E "$pattern" "$input_file" >> "$output_file"
done


# write a code that searchers the rows of a tsv file for a specific string in the first column and then writes the entire row to a new tsv file
# the input file is AlphaMissense_aa_substitutions.tsv
# the output file is AlphaMissense_mito_genes.tsv
# the strings to search for are: search_strings=('P00156', 'P00395', 'P00403', 'P00414', 'P00846', 'P03886', 'P03891', 'P03897', 'P03901', 'P03905', 'P03915', 'P03923', 'P03928')
# the first column of the input file is the uniprot_id
# the first column of the output file is the uniprot_id
# the output file should contain all the rows of the input file that have a uniprot_id that matches one of the search strings
# the output file should be a tsv file
# the output file should be named AlphaMissense_mito_genes.tsv


# Create the output file and write the header
# head -n 1 $input_file > $output_file

# Loop over the search strings
# for string in "${search_strings[@]}"; do
#   # Use awk to search for the string in the first column and append the row to the output file
#   awk -v s="$string" 'BEGIN{FS=OFS="\t"} $1 == s' $input_file >> $output_file
# done
