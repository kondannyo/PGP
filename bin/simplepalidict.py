#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 24 15:15:58 2017

@author: kondanno
"""

import csv
import sys

from palilookup2 import plu, dictpath

textpath = sys.argv[1]
outpath = sys.argv[2]
cols = [['funcstem'], ['meaning']]
d = []
with open(dictpath, newline='') as csvfile:
    for entry in csv.reader(csvfile, quotechar="'"):
        d.append(entry)
output = ''
print(textpath+'\n'+outpath+'\n')
with open(textpath) as textfile:
    for text in csv.reader(textfile, quotechar='"'):
#        print(text[0])
        newresult = ''
        matchlist = plu(text[0])
#        newresult+=text[0]
        output+=text[0]+',\n'
        print(text[0], matchlist)
        for item in matchlist:
            output+=item+'\n'

        print(newresult)
#    output+=newresult
print(output)
with open(outpath, 'w') as outfile:
    outfile.write(output)

