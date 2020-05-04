#!/usr/bin/env python3

import csv
import re
import sys
from pathlib import Path


BASE_DIR = Path(__file__).resolve().parent # this directory

# if len(sys.argv) < 2:
    # print ('Usage: ' + sys.argv[0] + '<testdictionary.csv> <testoutput.csv>')
    # sys.exit(1)

# existingdictionary_path = sys.argv[1]
# sorteddictionary_path = sys.argv[2]

existingdictionary_path = 'testdictionary.csv'
sorteddictionary_path = 'testoutput.csv'


def palisortkey(input, _charvalue = {}):
    """sorts strings into pali alphabetical order"""
    if len(_charvalue) == 0:
        charInorder = [
            '#', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'ā',
            'i', 'ī', 'u', 'ū', 'e', 'o', 'ṃ', 'k', 'kh', 'g', 'gh', 'ṅ', 'c',
            'ch', 'j', 'jh', 'ñ', 'ṭ', 'ṭh', 'ḍ', 'ḍh', 'ṇ', 't', 'th', 'd',
            'dh', 'n', 'p', 'ph', 'b', 'bh', 'm', 'y', 'r', 'l', 'ḷ', 'v', 's', 'h',
        ]
        for i in range(0, len(charInorder)):
            c = charInorder[i]
            _charvalue[c] = i * 2
            if c != c.upper():
                _charvalue[c.upper()] = i * 2 - 1
        del charInorder
    mult = len(_charvalue)
    vals = []
    for i in range(0, len(input)):
        val = 0
        c1 = input[i]
        c2 = input[i:i+2]
        if c2 in _charvalue:
            val = _charvalue[c2]
            i += 1
        elif c1 in _charvalue:
            val = _charvalue[c1]
        vals.append(val)
    return tuple(vals)

def csvsortkey(row):
    return palisortkey(row.split(',')[0])


dictarray = open(existingdictionary_path , 'r', encoding = 'utf-8'). readlines()[1:]

dictarray.sort(key = csvsortkey)


for row in dictarray:
    row = row.split(',')[0]
    print (row.encode('utf-8'))



 