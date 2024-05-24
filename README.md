Nuclei Template: Detecting Sensitive Data in JavaScript URLs

This repository includes a Nuclei template and a bash script to identify sensitive data in JavaScript URLs.
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

bash

    ./run_nuclei.sh urls.txt

    This will initiate the scan using Nuclei on the provided URLs.

Example urls.txt Content:

arduino

https://example.com/script1.js
https://example.com/script2.js
https://example.com/script3.js

Requirements

Ensure you have Nuclei installed and accessible in your system's PATH. You can install Nuclei by following the installation instructions provided here.
Installation Steps

    Install Go:

    If Go is not already installed, download and install it from the official Go website.

    Install Nuclei:

    After installing Go, you can install Nuclei using the following command:

    bash

go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

Verify Installation:

Ensure Nuclei is installed correctly by running:

bash

    nuclei -version

Customization

The find-js-sensitive-data.yaml template can be customized to include additional patterns or modify existing ones. The template relies on regex patterns to identify various types of sensitive data such as API keys, access tokens, and private keys.
Example Customization

You can add new regex patterns by modifying the template, like so:

yaml

- type: regex
  name: slack_token
  regex:
    - 'xox[baprs]-[0-9a-zA-Z]{10,48}'

Contributing

Contributions, suggestions, and bug reports are welcome! Feel free to open an issue or submit a pull request.
License

This project is licensed under the MIT License. See the LICENSE file for details.
Acknowledgements

    Nuclei by ProjectDiscovery for providing an efficient and flexible security scanner.
    Thanks to all contributors and the open-source community for their support and contributions.

Following these instructions, you'll be able to leverage the Nuclei template and script to effectively scan for sensitive data in JavaScript URLs. If you encounter any issues or have questions, don't hesitate to reach out.
