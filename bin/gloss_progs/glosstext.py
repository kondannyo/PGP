#!/usr/bin/env python
#
# LaTeX helper to gloss in expec format using a CSV dictionary.
#
# https://www.ctan.org/pkg/expex?lang=en


import csv
import io
import re
import sys
import unicodedata


def read_text(path):
    text = open(path, 'r', encoding='utf-8').read()
    text = unicodedata.normalize('NFC', text)
    return text


def write_text(path, text):
    open(path, 'w', encoding='utf-8').write(text)


def make_dictionary(path, lookup_key='Pali'):
    file = open(str(path), 'r', encoding='utf-8')
    text = file.read()
    # Remove any decomposed characters
    text = unicodedata.normalize('NFC', text)
    text_file = io.StringIO(text)
    dictionary = {}
    for row in csv.DictReader(text_file):
        dictionary[row[lookup_key]] = row
    return dictionary


def split_words(text):
    # Split the text on whitespace
    words = re.split(r'[ \n]', text)
    # Remove empty elements
    words = filter(len, words)
    return list(words)


def cleanword(orig_word):
        cl_word = orig_word
        # Lowercase lookup
        cl_word = cl_word.lower()
        # Lookup without ending ti [or pi use [pt]-brackets are 'or'  [\'’]  [., ]
        cl_word = re.sub(r'[\'`‘’“”][pt]i', '', cl_word)
        # Lookup without punctuation, except single quotes
        cl_word = re.sub(r'[.";:!?“”,()]', '', cl_word)
        # Lookup without single quotes
        cl_word = re.sub(r'[\'`‘’]', '', cl_word)
        return cl_word


def basic_gloss_word(dictionary, orig_word, result_key='English'):
    check_word = cleanword(orig_word)
    row = dictionary.get(check_word, {})
    result = row.get(result_key, '')
    if result:
        return '%s[%s]' % (orig_word, result)
    else:
        return '%s[-]' % orig_word


def gloss_word(dictionary, word, result_key='English'):

    # Special exception for look ups beginning with \, don't do any punctuation lookups
    if word[0] in ('\\','+'):
        row = dictionary.get(word, '')
        if row:
            return row[result_key]

    pali_lookup = word
    # Lowercase lookup
    pali_lookup = pali_lookup.lower()
    # Lookup without punctuation, except single quotes
    pali_lookup = re.sub(r'[.";:?“”,()]', '', pali_lookup)
    # Lookup without ending ti [or pi use [pt]-brackets are 'or'  [\'’]  [., ]
    pali_lookup = re.sub(r'[\'’][pt]i$', '', pali_lookup)
    # Lookup without single quotes
    pali_lookup = re.sub(r'[\'`‘’]', '', pali_lookup)
    row = dictionary.get(pali_lookup, '')

    if not row:
        return ' %s[]' % word

    english = row.get('ENGLISH')
    case = row.get('CASE')
    num = row.get('NUM')
    if num and num != 'sg':
        num_print = '-' + num
    else:
        num_print = ''
    gender = row.get('GENDER')
    if gender and gender != 'm':
        gender_print = '-' + gender
    else:
        gender_print = ''
    person = row.get('PERSON')
    if person:
        person_print = person
    else:
        person_print = ''
    # voice = row.get('VOICE')
    # if voice:
    #     voice_print = '-' + voice
    # else:
    #     voice_print = ''

    if person: # verb forms
        if case:
            case_tag = str.upper(case)
            case_print = '-' + case
        else:
            case_tag = 'NUL'
            case_print = ''
        english_latex = '{\GlMU{%s}}-\\%s{\\GrMU{%s%s%s}}' % (english, case_tag, person_print, num_print, case_print)
    else: # case forms
        if case:
            case_tag = str.upper(case)
            case_print = case
        else:
            case_tag = 'NUL'
            case_print = ''
        english_latex = '{\GlMU{%s}}-\\%s{\\GrMU{%s%s%s}}' % (english, case_tag, case_print, num_print, gender_print)

    return '%s[%s]' % (word, english_latex)


def main():
    if len(sys.argv) < 3:
        print('Usage: ' + sys.argv[0] + ' <text.txt> <dictionary.csv> <output.tex>')
        sys.exit(1)
    text_path = sys.argv[1]
    dictionary_path = sys.argv[2]
    output_path = sys.argv[3]

    text = read_text(text_path)
    dictionary = make_dictionary(dictionary_path, 'Pali')

    output = []
    for word in split_words(text):
        output.append(gloss_word(dictionary, word, 'English'))
    glossed_text = ' '.join(output)

    write_text(output_path, glossed_text)


if __name__ == '__main__':
    main()
