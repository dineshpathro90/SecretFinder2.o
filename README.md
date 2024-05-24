Nuclei Template: Detecting Sensitive Data in JavaScript URLs

This repository provides tools for identifying sensitive data in JavaScript URLs using Nuclei.
Included Files

    find-js-sensitive-data.yaml: Nuclei template tailored to search for sensitive information within JavaScript files.
    run_nuclei.sh: Bash script to execute the template on a list of URLs.

Instructions

    Clone the Repository:

    bash

git clone https://github.com/yourusername/nuclei-js-sensitive-data.git
cd nuclei-js-sensitive-data

Prepare URLs:

Add your JavaScript URLs to a text file named urls.txt, with each URL on a separate line.

Run the Bash Script:

Execute the bash script, providing the urls.txt file as an argument:
