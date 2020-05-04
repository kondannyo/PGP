#!/usr/bin/env python3
#
# Based upon Jagaro Bhikkhu's pali-db-to-csv (modified by kondanno b as ...csv2)


import re
from lib.GlossingDictionary import GlossingDictionary


class PatimokkhaDictionary(GlossingDictionary):

    def __init__(self, dictionary_path):
        super().__init__(dictionary_path, 'PALI', 'ENGLISH')

    def process_word(self, word, output, not_found):
        # Special exception for look ups beginning with \, don't do any punctuation lookups
        if word[0] in ('\\','+'):
            row = self.dictionary.get(word, '')
            if row:
                output.append(row['ENGLISH'])
                return

        pali_lookup = word
        # Lowercase lookup
        pali_lookup = pali_lookup.lower()
        # Lookup without punctuation, except single quotes
        pali_lookup = re.sub(r'[.";:?“”,()]', '', pali_lookup)
        # Lookup without ending ti [or pi use [pt]-brackets are 'or'  [\'’]  [., ]
        pali_lookup = re.sub(r'[\'’][pt]i$', '', pali_lookup)
        # Lookup without single quotes
        pali_lookup = re.sub(r'[\'`‘’]', '', pali_lookup)
        row = self.dictionary.get(pali_lookup, '')

        if row:
            english = row['ENGLISH']
            case = row['CASE']
            num = row['NUM']
            if num and num != 'sg':
                num_print = '-' + num
            else:
                num_print = ''
            gender = row['GENDER']
            if gender and gender != 'm':
                gender_print = '-' + gender
            else:
                gender_print = ''
            person = row['PERSON']
            if person:
                person_print = person
            else:
                person_print = ''
            voice = row['VOICE']
            if voice:
                voice_print = '-' + voice
            else:
                voice_print = ''

            if person: #verb forms
                if case:
                    case_tag = str.upper(case)
                    case_print = '-' + case
                else:
                    case_tag = 'NUL'
                    case_print = ''
                english_latex = '{\GlMU{%s}}-\\%s{\\GrMU{%s%s%s}}' % (english, case_tag, person_print, num_print, case_print)
            else: #case forms
                if case:
                    case_tag = str.upper(case)
                    case_print = case
                else:
                    case_tag = 'NUL'
                    case_print = ''
                english_latex = '{\GlMU{%s}}-\\%s{\\GrMU{%s%s%s}}' % (english, case_tag, case_print, num_print, gender_print)
        else:
            english_latex = ''
            if not re.match('^[0-9]+\.', word):
                not_found.append('%s (%s)' % (word, pali_lookup))

        output.append(' %s[%s]' % (word, english_latex))


if __name__ == '__main__':
    PatimokkhaDictionary.main()
