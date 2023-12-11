# WebServiceInterfaceParser READ.ME

#Prerequisites
- User must have python 3 installed on their system
- The parser uses existing libraries within Python so no additional libraries are required
- Must have well formed XML file to input

#Description
- The script parses XML representing a service interface 
- It then converts this into a JSON format
- Contains information regarding abstract methods, exceptions, arguments, visibility and return types
- Python's ElementTree library is used for the XML parsing

#Explaining the script
- The script extracts information from the abstract_method elements (method name, exceptions, arguments, visibility and return type)
- It uses the xml.etree.ElementTree module to parse the XML string
- The data extracted is formatted into a JSON structure
- During the execution of the script any exceptions will be caught and then displayed through an error message

#How to use 
- Open WebServiceInterfaceParser.py file
- Ensure the input XML is in the same directory as the parsing script
- Run the script 
- Then go to the terminal and enter the following command 'python3 WebServiceInterfaceParser.py WebServiceInterface.xml' 
- Input file_name can be changed within this command if desired to do so

#Output
- Script will output the JSON and print it to the console

#Author:Peter Nicholl
#Date:05/11/23

