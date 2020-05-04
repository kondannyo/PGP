#!/usr/bin/env python

import os
from pathlib import Path
import re
import shutil
import unicodedata

WORK_DIR = Path(__file__).resolve().parent / 'Patimokkha'
INPUT_DIR = WORK_DIR / 'Rules Text'
OUTPUT_DIR = WORK_DIR / 'Rules'
INDEX_PATH = WORK_DIR / 'Index.tex'
PREP_DIR = WORK_DIR / 'Prep'

#refers to "for title, section in SECTIONS:"
SECTIONS = [
  ['Nidana', 'nid'],
  ['Parajika', 'par'],
  ['Sanghadisesa', 'sd'],
  ['Aniyata', 'an'],
  ['NissaggiyaPacittiya', 'npac'],
  ['Pacittiya', 'pac'],
  ['Patidesaniya', 'pat'],
  ['Sekhiya', 'sk'],
  ['Sattadhikaranasamatha', 'sat'],
  ['Nitthitam', 'nit'],
]

LANGUAGES = [
  ['English', 'eng'],
  ['Pali', 'pali'],
]


def process_rules(input_path, output_path, key_func):
    parts = split_rules_into_parts(input_path)
    keys, rules = parts_to_rules(parts, key_func)
    output = '\n\n'.join(rules)
    with output_path.open('w', encoding='utf-8') as f:
        f.write(output)
        f.write('\n')
    return keys


def split_rules_into_parts(input_path):
    text = input_path.open(encoding='utf-8').read()
    # Remove any decomposed characters
    text = unicodedata.normalize('NFC', text)
    # Change EOL from to Unix
    text = re.sub(r'\r\n', '\n', text)
    text = re.sub(r'\r', '\n', text)
    # Remove whitespace at beginning and ending
    text = re.sub(r'\n[ \t\r\f\v]+', '\n', text)
    text = re.sub(r'[ \t\r\f\v]+\n', '\n', text)
    # Split by 2 or more new lines
    return re.split(r'\n{2,}', text)


def part_number(part):
    matches = re.match(r'^([0-9]+)\.?', part)
    if matches:
        return str(matches.group(1))
    else:
        return 'FIXME'


def parts_to_rules(parts, key_func):
    rules = []
    keys = set()
    for part in parts:
        part = part.strip()
        num = part_number(part)
        key = key_func(num)
        keys.add(key)
        rules.append(
            '@ ' + key + '\n' + part
        )
    def sort_func(key):
        num_key = re.sub(r'[^0-9]*', '', key)
        if num_key:
            return int(num_key)
        else:
            return 0
    keys = sorted(list(keys), key=sort_func)
    return (keys, rules)


def main():
    index = []
    try:
        OUTPUT_DIR.mkdir(parents=True, exist_ok=False)
    except:
        print('Rules already exist')
        raise
    for title, section in SECTIONS:
        index.append('% ' + title)
        index.append('')
        keys = {}
        for lang_title, lang in LANGUAGES:
            input_path = INPUT_DIR / (lang_title + title + '.txt')
            output_path = OUTPUT_DIR / (lang_title + title + '.tex')
            key_func = lambda num: lang + '-' + section + '-' + num + '.tex'
            keys[lang] = process_rules(input_path, output_path, key_func)
        # Interleave
        for i in range(len(keys[LANGUAGES[0][1]])):
            for lang_title, lang in LANGUAGES:
                index.append('\\input{' + PREP_DIR.name + '/' + keys[lang][i] + '}')
        index.append('')
    with INDEX_PATH.open('w', encoding='utf-8') as f:
        f.write('\n'.join(index))


if __name__ == '__main__':
    main()
