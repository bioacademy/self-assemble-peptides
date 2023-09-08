#!/bin/bash

# Get the directory containing all the PDFs
DIR="./"

# Set a counter to 1
COUNT=1

# Loop through the files in the directory
for f in "$DIR"/*.pdf; do
    # Get the filename without the extension
    filename=$(basename -- "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"

    # Rename the file with the counter
    mv -- "$f" "$DIR/$COUNT.$extension"

    # Increment the counter
    COUNT=$((COUNT+1))
done