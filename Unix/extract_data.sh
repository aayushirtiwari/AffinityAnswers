#!/bin/bash

# Download the NAVAll.txt file using curl
curl -o NAVAll.txt "https://www.amfiindia.com/spages/NAVAll.txt"

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download NAVAll.txt"
    exit 1
fi

# Extract the Scheme Name and Asset Value fields
awk '{print $1, $6}' NAVAll.txt > NAVAll.tsv

# View the contents of the NAVAll.tsv file
cat NAVAll.tsv
