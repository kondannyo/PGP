#!/usr/bin/env python

import csv
import re
import sys

LEFT_PREFIX = '\\begin{samepage}\n\ensurevspace{4\\baselineskip}\n\\begin{leftcolumn*}\n'
LEFT_SUFFIX = '\\end{leftcolumn*}\n'
RIGHT_PREFIX = '\\begin{rightcolumn}\n'
RIGHT_SUFFIX = '\\end{rightcolumn}\n\end{samepage}\n'

# if len(sys.argv) < 4:
#     print 'Usage: ' + sys.argv[0] + ' <left.tex> <right.tex> <output.tex>'
#     sys.exit(1)
#
# left_path = sys.argv[1]
# right_path = sys.argv[2]
# output_path = sys.argv[3]
left_path = 'mulapariyayaENG.txt'
right_path = 'mulapariyayaPALI.txt'
output_path = 'mulapariyayaParacol.tex'

right_text = open(right_path, 'r').read().strip()

def split_text(path):
    text = open(path, 'r').read().strip()
    parts = re.split(r'\n[\n\r\t ]*\n', text)
    parts = map(lambda x: x.strip(), parts)
    return parts

def indexof(lst, index):
    if index > len(lst) - 1:
        return ''
    else:
        return lst[index]

left_parts = split_text(left_path)
right_parts = split_text(right_path)

with open(output_path, 'wb') as output_file:
    for i in range(max(len(left_parts), len(right_parts))):
        left = indexof(left_parts, i)
        right = indexof(right_parts, i)
        output_file.write(
            LEFT_PREFIX + left + '\n' + LEFT_SUFFIX + '\n' +
            RIGHT_PREFIX + right + '\n' + RIGHT_SUFFIX + '\n'
        )
