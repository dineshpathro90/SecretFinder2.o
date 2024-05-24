# Nuclei Template for Detecting Sensitive Data in JavaScript URLs

This repository contains a Nuclei template and a bash script for detecting sensitive data in JavaScript URLs.

## Files

- `find-js-sensitive-data.yaml`: Nuclei template to scan for sensitive data in JS files.
- `run_nuclei.sh`: Bash script to execute the template on a list of URLs.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/nuclei-js-sensitive-data.git
   cd nuclei-js-sensitive-data
Add your .js URLs to a text file (e.g., urls.txt), one URL per line.
Run the bash script with the URLs file as an argument:

bash

./run_nuclei.sh urls.txt

Example urls.txt file

text

https://example.com/script1.js
https://example.com/script2.js
https://example.com/script3.js

Requirements

    Nuclei
