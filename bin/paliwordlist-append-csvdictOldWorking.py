#!/usr/bin/env python

import csv
import re
import sys

if len(sys.argv) < 3:
    print 'Usage: ' + sys.argv[0] + ' <pali.txt> <dictionary.csv> <output.csv>'
    sys.exit(1)

wordlist_path = sys.argv[1]
dictionary_path = sys.argv[2]
output_path = sys.argv[3]

log_path = output_path + '.log'
with open(log_path, 'wb') as unused_file:
    unused_file.write('Extra bits left over (duplicate existing entries) from combining' + wordlist_path + ' and ' + dictionary_path + '\r\n')

with open(wordlist_path, 'r') as list_file:
    newwords = list_file.read()

    # Split the pali on whitespace
    newwords_list = re.split(r'[ \n]', newwords)

    # Remove empty elements
    newwords_list = filter(len, newwords_list)

dictionary = {}

with open(dictionary_path, 'rb') as dictionary_file:
    reader = csv.DictReader(dictionary_file)
    for row in reader:
        dictionary[row['pali']] = row['english']

with open(output_path, 'ab') as append_file:

    fieldnames = ['pali', 'english']
    writer = csv.DictWriter(append_file, fieldnames=fieldnames)

    for check_word in newwords_list:
        if check_word in dictionary:
            with open(log_path, 'ab') as unused_file:
                unused_file.write(check_word + '\r\n')
        else:
            writer.writerow({'pali': check_word , 'english': '',})
