#!/usr/bin/env python3

import argparse
import io
import sys
import xml.etree.ElementTree as ET


def load_ts_translations(ts_path):
    """
    Parse a Qt .ts file and return a mapping from source text to translation.
    """
    tree = ET.parse(ts_path)
    root = tree.getroot()
    translations = {}

    for context in root.findall('context'):
        for msg in context.findall('message'):
            if msg.get('numerus') == 'yes':
                continue  # Skip plural messages
            source = msg.findtext('source')
            translation = msg.findtext('translation') or ''
            if source:
                translations[source] = translation
    return translations


def update_xliff_targets(xliff_path, translations, output_path):
    with open(xliff_path, 'rb') as f:
        data = f.read()

    parser = ET.XMLParser(encoding='utf-8')
    tree = ET.parse(io.BytesIO(data), parser=parser)
    root = tree.getroot()

    namespaces = {'': 'urn:oasis:names:tc:xliff:document:1.2'}
    # https://stackoverflow.com/questions/54439309/how-to-preserve-namespaces-when-parsing-xml-via-elementtree-in-python
    ET.register_namespace('', 'urn:oasis:names:tc:xliff:document:1.2')

    for trans_unit in root.findall('.//trans-unit', namespaces):
        source = trans_unit.findtext('.//source', namespaces)

        source_elem = trans_unit.find('.//source', namespaces)
        source = source_elem.text if source_elem is not None else None
        target_elem = trans_unit.find('.//target', namespaces)
        if target_elem is None:
            continue

        if source in translations:
            if target_elem.text == source or target_elem.text == '':
                target_elem.text = translations[source]
        else:
            print(f"Warning: No translation found for source '{source}'")

    with open(output_path, 'wb') as f:
        tree.write(f, encoding='utf-8', xml_declaration=True)


def main():
    parser = argparse.ArgumentParser(
        description='Sync XLIFF <target> elements from Qt .ts translations'
    )
    parser.add_argument('ts_file', help='Path to the correct .ts file')
    parser.add_argument('xlf_file', help='Path to the XLIFF file to fix')
    parser.add_argument('-o', '--output', default='fixed.xlf',
                        help='Output path for the corrected XLIFF')
    args = parser.parse_args()

    print(f"Loading translations from {args.ts_file}...", flush=True)
    translations = load_ts_translations(args.ts_file)
    print(f"Loaded {len(translations)} translations.", flush=True)

    print(f"Updating {args.xlf_file}...", flush=True)
    update_xliff_targets(args.xlf_file, translations, args.output)
    print(f"Written corrected XLIFF to {args.output}", flush=True)

    sys.exit(0)


if __name__ == '__main__':
    main()
