#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 13:44:17 2017

@author: kondanno
"""

import argparse
import unicodedata

def reader(path):
        file = open(str(path), 'r', encoding='utf-8')
        text = file.read()
        # Remove any decomposed characters
        text_file = unicodedata.normalize('NFC', text)
        return text_file

def writer(path, output):
        file = open(str(path), 'w', encoding='utf-8')
        for i in output:
            print(i)
            strg = str(i) + '\n'
            file.write(strg)


def parse_args():
    parser = argparse.ArgumentParser(description="Gloss Maker - Generate Latex\
                                     Markup for 'Expex' glossing package.")
    parser.add_argument('project', type=str, help='The primary text file to be\
                        glossed', metavar="'string'")
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-d', '--dual', action="strore_true",
                       help='2 language, 2 page output')
    group.add_argument('-b', '--bi', action="strore_true",
                       help='2 language, bi-linear output')
    group.add_argument("-s", "--single", action="store_true",
                       help='Single language gloss')
    # parser.add_argument('-o', '--output', type=str,
    #                    help='Output file: default = project + "_gloss.tex"')
    # parser.add_argument('-q', '--quite',
    #                    help='Reduced verbosity output', action="store_true")
    args = parser.parse_args()
    print('Project: ', args.project)
    print('Dual: ', args.dual)
    print('Bi: ', args.bi)
    print('Single: ', args.single)
    print('Secondary Text File: ', args.dual_text)
    print('Output Requested: ', args.output)
    if args.quite:
        print('Quite Output')
    else:
        print('Verbose Mode')
    return args


def main():
    args = parse_args()
    print(args)


if __name__ == '__main__':
    main()

