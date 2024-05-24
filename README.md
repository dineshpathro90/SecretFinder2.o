Nuclei Template: Detecting Sensitive Data in JavaScript URLs

This repository provides tools for identifying sensitive data in JavaScript URLs using Nuclei.
Included Files


Clone the Repository:

    git clone https://github.com/dineshpathro90/SecretFinder2.o.git
    cd nuclei-js-sensitive-data


Prepare URLs:

Add your JavaScript URLs to a text file named urls.txt, with each URL on a separate line.



Run the Bash Script:

Execute the bash script, providing the urls.txt file as an argument:


bash

    ./run_nuclei.sh urls.txt
This will initiate the scan using Nuclei on the provided URLs.

