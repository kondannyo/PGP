#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Based upon Jagaro Bhikkhu's pali-db-to-csv (modified by kondanno b as ...csv2)
import csv
import re
import sys

def num_there(s):
    return any(i.isdigit() for i in s)

if len(sys.argv) < 2:
    print 'Usage: ' + sys.argv[0] + ' <pali.txt> <output.tex>'
    sys.exit(1)

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
    clean_word = re.sub(r'[\'’”]ti$', '', pali_word)
    # Lookup without punctuation
    clean_pali.append(re.sub(r'[.\'";`“‘’,]', '', clean_word))

with open(output_path, 'w') as output_file:
    
    unique_words = list(set(clean_pali))
    unique_words.sort()
    print unique_words
    for pali_uniq_out in unique_words:
        unique_count = clean_pali.count(pali_uniq_out)
        print pali_uniq_out
        output_file.write(pali_uniq_out + ',' + str(unique_count) + "\n")
