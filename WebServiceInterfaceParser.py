import xml.etree.ElementTree as ET
import json
import sys


def parse(file_name):
    try:
        with open(file_name, 'r') as f:
            XML = f.read()

        tree = ET.ElementTree(ET.fromstring(XML))
        root = tree.getroot()
        abstract_methods = []

        for method in root.findall('.//abstract_method'):
            method_info = {
                'method_name': method.get('id'),
                'visibility': method.find('access').text,
                'arguments': {
                    'parameter': []
                },
                'exceptions': {
                    'exception': []
                },
                'return': method.find('return').text
            }

            param_list = method.find('parameterList')
            if param_list is not None:
                for param in param_list.findall('parameter'):
                    param_info = {
                        'datatype': param.get('type'),
                        'label': param.text
                    }
                    method_info['arguments']['parameter'].append(param_info)

            exceptions = method.find('exceptions')
            if exceptions is not None:
                for exception in exceptions.findall('throws'):
                    method_info['exceptions']['exception'].append(exception.text)

            abstract_methods.append(method_info)

        output_json = {
            'abstract_method': abstract_methods
        }

        print(json.dumps(output_json, indent=4))

    except Exception as E:
        print('Error:', E)

if __name__ == '__main__':
    if len(sys.argv) > 1:
        print('Parsing file:', sys.argv[1])
        parse(sys.argv[1])
    else:
        print('Error: No file name provided')