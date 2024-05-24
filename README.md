# Nuclei Template: Detecting Sensitive Data in JavaScript URLs

- This repository provides tools for identifying sensitive data in JavaScript URLs using Nuclei.

Included Files

![Example Image](https://drive.google.com/file/d/1rM2ClTQ6ViwMt3GTI6MOKbzzjg4hH7YZ/view?usp=sharing)

+ Clone the Repository:

+     git clone https://github.com/dineshpathro90/SecretFinder2.o.git
+     cd SecretFinder2.o




+ Prepare URLs:

+ Add your JavaScript URLs to a text file named urls.txt, with each URL on a separate line.




+ Run the Bash Script:

+ Execute the bash script, providing the urls.txt file as an argument:

+ bash

+     ./run_nuclei.sh urls.txt
+ This will initiate the scan using Nuclei on the provided URLs.

Example urls.txt Content:

+     https://example.com/script1.js
+     https://example.com/script2.js
+     https://example.com/script3.js



Requirements

+ Ensure you have Nuclei installed and accessible in your system's PATH.



Customization

+ The find-js-sensitive-data.yaml template can be customized to include additional patterns or modify existing ones. The template relies on regex patterns to identify various types of sensitive data such as API keys, access tokens, and private keys.

Example Customization

+ You can add new regex patterns by modifying the template, like so:

+     - type: regex 
+       name: slack_token 
+       regex: 
+         - 'xox[baprs]-[0-9a-zA-Z]{10,48}'



Acknowledgements
+   

+ Nuclei by ProjectDiscovery for providing an efficient and flexible security scanner.
+ Thanks to all contributors and the open-source community for their support and contributions.

By following these instructions, you'll be able to leverage the Nuclei template and script to effectively scan for sensitive data in JavaScript URLs. If you encounter any issues or have questions, don't hesitate to reach out.
