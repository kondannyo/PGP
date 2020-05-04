#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Based upon Jagaro Bhikkhu's pali-db-to-csv (modified by kondanno b as ...csv2)

import csv
import re
import sys
from glosstext import cleanword

def num_there(s):
    return any(i.isdigit() for i in s)

#if len(sys.argv) < 2:
#    print 'Usage: ' + sys.argv[0] + ' <pali.txt> <output.tex>'
#    sys.exit(1)

pali_path = sys.argv[1]
output_path = sys.argv[2]

with open(pali_path, 'r') as pali_file:
    pali = pali_file.read()
    # Split the pali on whitespace
    pali_list = re.split(r'[ \r\n]', pali)
    # Remove empty elements
    pali_list = filter(len, pali_list)
    clean_pali=[]
for pali_word in pali_list:
    # Lookup without ending ti
    clean_word = cleanword(pali_word)
    # Lookup without punctuation
    if str.isalpha(clean_word):
        if clean_word not in clean_pali:
            clean_pali.append(clean_word)
with open(output_path, 'w') as output_file:
    for pali_uniq_out in clean_pali:
        output_file.write(pali_uniq_out + "\n")
