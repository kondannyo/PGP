#!/usr/bin/env python3


import re
import time
from pathlib import Path

from lib.Prepper import Prepper
from PatimokkhaDictionary import PatimokkhaDictionary


#
# Setup Paths
#

BASE_DIR = Path(__file__).resolve().parent # this directory
WORK_DIR = BASE_DIR.parent # Suttas
RULES_DIR = WORK_DIR / 'mahasalayatanika'
PREP_DIR = WORK_DIR / 'Prep'
LOG_PATH = WORK_DIR / 'Prep.log'
PALI_DICTIONARY_PATH = WORK_DIR / 'suttadict.csv'
ENGLISH_DICTIONARY_PATH = WORK_DIR / 'englishdictionary.csv'


#
# Dictionary and Glossing Setup
#

pali_dictionary = PatimokkhaDictionary(PALI_DICTIONARY_PATH)
english_dictionary = PatimokkhaDictionary(ENGLISH_DICTIONARY_PATH)
not_found_dictionary = {}

def gloss_pali(filename, text):
    glossed, not_found = pali_dictionary.process(text)
    if not_found:
        not_found_dictionary[filename] = not_found
    return glossed

def gloss_english(filename, text):
    glossed, not_found = english_dictionary.process(text)
    if not_found:
        not_found_dictionary[filename] = not_found
    return glossed


#
# Prepper Rules
#

prep = Prepper(RULES_DIR, PREP_DIR)

prep.match('^eng-center', lambda filename, text:
"""\\begin{leftcolumn*}
\\begin{center}
{\\footnotesize
%s}
\\end{center}
\\end{leftcolumn*}
""" % text)

# ?! means not
# (?!center) means not center

#match for rule files that should be enumerated

def match_english(filename, text):
    if re.match(r'^eng-[A-Za-z]+-(\d+)\.', filename):
        item = '\\vspace{5 mm}'
        #item = '\\item\n'
    else:
        item = ''
    return \
"""\\begin{samepage}
\\ensurevspace{4\\baselineskip}
\\begin{leftcolumn*}
%s
\\begingl[glneveryline={\EnglishGlossA,\EnglishGlossB]
%s
\\endgl
\\end{leftcolumn*}
""" % (item, gloss_english(filename, text))
prep.match(r'^eng-(?!center)', match_english)

prep.match('^pali-center', lambda filename, text:
"""\\begin{rightcolumn}
\\begin{center}
%s
\\end{center}
\\end{rightcolumn}
""" % text)

def match_pali(filename, text):
    if re.match(r'^pali-[A-Za-z]+-(\d+)\.', filename):
        item = '\\vspace{5 mm}'
    else:
        item = ''
    return \
"""\\begin{rightcolumn}
%s
\\begingl[glneveryline={\PaliGlossA,\PaliGlossB]
%s
\\endgl
\\end{rightcolumn}
\\end{samepage}
""" % (item, gloss_pali(filename, text))
prep.match(r'^pali-(?!center)', match_pali)



#
# Go!
#

# Update the files in Patimokkha/Prep
prep.compile()

# Output the missed word dictionary
with LOG_PATH.open('w', encoding='utf-8') as f:
    f.write('Log started: %s\n\n' % time.asctime())
    for filename in sorted(not_found_dictionary.keys()):
        not_found = not_found_dictionary[filename]
        f.write('%s: not found: %s\n' % (filename, ', '.join(not_found)))
