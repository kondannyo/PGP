#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Based upon Jagaro Bhikkhu's pali-db-to-csv (modified by kondanno b as ...csv2)
import csv
import re
import sys


def num_there(s):
    return any(i.isdigit() for i in s)

if len(sys.argv) < 3:
    print 'Usage: ' + sys.argv[0] + ' <pali.txt> <dictionary.csv> <output.tex>'
    sys.exit(1)

pali_path = sys.argv[1]
dictionary_path = sys.argv[2]
output_path = sys.argv[3]

with open(pali_path, 'r') as pali_file:
    pali = pali_file.read()

    # Split the pali on whitespace
    pali_list = re.split(r'[ \n]', pali)

    # Remove empty elements
    pali_list = filter(len, pali_list)
    print pali_list
    
dictionary = {}

with open(dictionary_path, 'rb') as dictionary_file:
    reader = csv.DictReader(dictionary_file)
    for row in reader:
        dictionary[row['PALI']] = row

with open(output_path, 'w') as output_file:

    for pali_word in pali_list:
        # Lookup without ending ti
        pali_lookup = re.sub(r'[\'’]ti$', '', pali_word)
        # Lookup without punctuation
        pali_lookup = re.sub(r'[.\'";`“‘’,]', '', pali_lookup)
        row = dictionary.get(pali_lookup, '')

        if row:
            english = row['ENGLISH']
            case = row['CASE']
            num = row['NUM']
            gender = row['GENDER']
            person = row['PERSON']
            voice = row['VOICE']
            
            
            if case:
                english_latex = '\\%s{%s}-\\textsc{%s-%s-%s-%s}' % (case, english, case, num, gender, person)
            # else:
                # pali_latex = pali_word
        else:
            english_latex = ''
            # pali_latex = pali_word

        if num_there(pali_word):
            output_file.write('\r\n')
        output_file.write(pali_word + '['+ english_latex + ']' + ' ')
