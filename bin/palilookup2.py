#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 24 15:15:58 2017

@author: kondanno
"""

import re
import csv

#ONLY MATCHES EXACT

dictpath = ('/home/kondanno/palidictionary/paliglossary3.csv')
# This utilized the full paliglossary2.csv dictionary with word_result
# appending multiple entries
# paliglossary3 is sorted in order of lenght of entry in order to captuer
# longest match possible first

def plu(paliword):
    for index in range(len(d)):
#        print('Does: ', d[index][1], '         match: ', paliword)
        if re.match(d[index][1], paliword):
#            print(d[index][2])
#            return('FOUND: ', d[index][1], "MEANING: ", d[index][2])
            match = d[index][2]
            clean = re.sub(r'[\'`‘’]', '', match)
            cleanlist = clean.split(',')
            cleanlist = [item.strip() for item in cleanlist]
            return(cleanlist)
    else:
#        print('Not Found')
        return(['-'])

d = []
with open(dictpath, newline='') as csvfile:
    for entry in csv.reader(csvfile, delimiter=";", quotechar="'"):
        d.append(entry)
