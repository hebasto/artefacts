#!/usr/bin/env python3

import argparse
import io
import sys
import xml.etree.ElementTree as ET

def parse_translation_file(xlf_file_path):
    with open(xlf_file_path, 'rb') as f:
        data = f.read()

    parser = ET.XMLParser(encoding='utf-8')
    tree = ET.parse(io.BytesIO(data), parser=parser)
    root = tree.getroot()

    namespaces = {'': 'urn:oasis:names:tc:xliff:document:1.2'}
    # https://stackoverflow.com/questions/54439309/how-to-preserve-namespaces-when-parsing-xml-via-elementtree-in-python
    ET.register_namespace('', 'urn:oasis:names:tc:xliff:document:1.2')

    for trans_unit in root.findall('.//trans-unit', namespaces):
        for source in trans_unit.findall('.//source', namespaces):
            print(ET.tostring(source, encoding='unicode'))


def main():
    parser = argparse.ArgumentParser(
        description='Sync XLIFF <target> elements from Qt .ts translations'
    )
    # parser.add_argument('ts_file', help='Path to the correct .ts file')
    parser.add_argument('xlf_file', help='Path to the XLIFF file to fix')
    # parser.add_argument('-o', '--output', default='fixed.xlf',
    #                     help='Output path for the corrected XLIFF')
    args = parser.parse_args()

    parse_translation_file(args.xlf_file)

    sys.exit(0)


if __name__ == '__main__':
    main()
