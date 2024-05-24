#!/bin/bash

# Define the input file containing the URLs
URLS_FILE=$1

# Check if the URLs file is provided
if [ -z "$URLS_FILE" ]; then
  echo "Usage: $0 <urls-file>"
  exit 1
fi

# Check if the URLs file exists
if [ ! -f "$URLS_FILE" ]; then
  echo "File '$URLS_FILE' not found!"
  exit 1
fi

# Path to the Nuclei template
TEMPLATE_PATH="./find-js-sensitive-data.yaml"

# Check if the template file exists
if [ ! -f "$TEMPLATE_PATH" ]; then
  echo "Nuclei template file '$TEMPLATE_PATH' not found!"
  exit 1
fi

# Loop through each URL in the file and run Nuclei
while IFS= read -r URL; do
  echo "Scanning URL: $URL"
  nuclei -u "$URL" -t "$TEMPLATE_PATH"
done < "$URLS_FILE"
