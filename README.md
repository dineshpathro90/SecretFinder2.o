Nuclei Template for Detecting Sensitive Data in JavaScript URLs

This repository contains a Nuclei template and a bash script for detecting sensitive data in JavaScript URLs.
Files

    find-js-sensitive-data.yaml: Nuclei template to scan for sensitive data in JS files.
    run_nuclei.sh: Bash script to execute the template on a list of URLs.

Usage

    Clone the repository:

    bash

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

Make sure you have Nuclei installed and accessible in your PATH. You can install Nuclei using the following commands:

bash

go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

or download it from the Nuclei releases page.
Installation Steps

    Install Go:
    If you don't have Go installed, you can download and install it from here.

    Install Nuclei:
    Once Go is installed, use the following command to install Nuclei:

    bash

go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

Verify Nuclei installation:
Ensure Nuclei is installed correctly by running:

bash

    nuclei -version

Customizing the Template

You can customize the find-js-sensitive-data.yaml template to include additional patterns or modify existing ones. The template uses regex patterns to detect various types of sensitive data such as API keys, access tokens, and private keys.
Example Customization

To add a new regex pattern for detecting Slack tokens, you can modify the template as follows:

yaml

- type: regex
  name: slack_token
  regex:
    - 'xox[baprs]-[0-9a-zA-Z]{10,48}'

Contributing

If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request. Contributions are welcome!
License

This project is licensed under the MIT License. See the LICENSE file for details.
Acknowledgements

    Nuclei by ProjectDiscovery for providing a powerful tool for fast and customizable vulnerability scanning.
    All contributors and the open-source community for their invaluable work and support.

By following these instructions, you should be able to use the Nuclei template and script to effectively scan for sensitive data in JavaScript URLs. If you encounter any problems or have any questions, please feel free to reach out.
