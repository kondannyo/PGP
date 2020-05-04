#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Based upon Jagaro Bhikkhu's pali-db-to-csv (modified by kondanno b as ...csv2)
import csv
import re
import sys
from pathlib import Path

def num_there(s):
    return any(i.isdigit() for i in s)

#if len(sys.argv) < 2:
#    print 'Usage: ' + sys.argv[0] + ' <pali.txt> <output.tex>'
#    sys.exit(1)

pali_path = sys.argv[1]
output_path = sys.argv[2]
log_file = Path('unique.log')
log_file.touch()

with open(pali_path, 'r') as pali_file:
    pali = pali_file.read()
    # Split the pali on whitespace
    pali_list = re.split(r'[ \r\n]', pali)
    # Remove empty elements
    pali_list = filter(len, pali_list)
    clean_pali=[]
for pali_word in pali_list:
    with open(log_file, 'w') as logout_file:
        if str.isalpha(pali_word):
            logout_file.write(pali_word + " ,is ALPHA, ")
            # Lookup without ending ti
            clean_word = re.sub(r'[.!?\'";:`“‘’,]', '', pali_word)
            clean_word = re.sub(r'[\'’”]ti$', '', clean_word)
            # Lookup without punctuation
            if clean_word not in clean_pali:
                logout_file.write(clean_word + " , NOT found in clean_pali" + "\n")
                clean_pali.append(clean_word)
            else:
                logout_file.write(clean_word + " , FOUND in clean_pali" + "\n")
        else:
            logout_file.write(pali_word + " ,is NOT alpha, ")
with open(output_path, 'w') as output_file:
    for pali_uniq_out in clean_pali:
        output_file.write(pali_uniq_out + "\n")
