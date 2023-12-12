WebServiceInterfaceParser README

Prerequisites:
Python 3 must be installed on your system.
The parser uses existing Python libraries, so no additional libraries are required.
Ensure you have a well-formed XML file for input.

Description:
The script parses XML representing a service interface.
It converts the parsed information into a JSON format.
The output includes details about abstract methods, exceptions, arguments, visibility, and return types.
Python's ElementTree library is employed for XML parsing.

Explaining the Script
The script extracts information from the abstract_method elements, including method name, exceptions, arguments, visibility, and return type.
It utilizes the xml.etree.ElementTree module to parse the XML string.
Extracted data is formatted into a JSON structure.
Any exceptions encountered during script execution will be caught and displayed through an error message.

How to Use
Open the WebServiceInterfaceParser.py file.
Ensure the input XML file is in the same directory as the parsing script.
Run the script.
In the terminal, enter the following command: python3 WebServiceInterfaceParser.py WebServiceInterface.xml.
You can change the file_name within this command if desired.

Output:
The script will output the JSON and print it to the console.

Author: Peter Nicholl
Date: 05/11/23 

