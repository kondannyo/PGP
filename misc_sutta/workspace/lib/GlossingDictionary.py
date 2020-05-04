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


class GlossingDictionary(object):

    def __init__(self, dictionary_path, word_key, lookup_key):
        dictionary = {}
        for row in self.csv_reader(dictionary_path):
            dictionary[row[word_key]] = row
        self.dictionary = dictionary
        self.word_key = word_key
        self.lookup_key = lookup_key

    def csv_reader(self, path):
        file = open(str(path), 'r', encoding='utf-8')
        text = file.read()
        # Remove any decomposed characters
        text = unicodedata.normalize('NFC', text)
        text_file = io.StringIO(text)
        return csv.DictReader(text_file)

    def process(self, text):
        # Split the text on whitespace
        words = re.split(r'[ \n]', text)
        # Remove empty elements
        words = filter(len, words)
        output = []
        not_found = []
        for word in words:
            self.process_word(word, output, not_found)
        return (''.join(output).strip(), not_found)

    def process_word(self, word, output, not_found):
        row = self.dictionary.get(word, {})
        lookup = row.get(self.lookup_key, '')
        if not lookup:
            not_found.append(word)
        output.append(' %s[%s]' % (word, lookup))

    @classmethod
    def main(cls):
        if len(sys.argv) < 3:
            print('Usage: ' + sys.argv[0] + ' <text.txt> <dictionary.csv> <output.tex> [log.txt]')
            sys.exit(1)
        text_path = sys.argv[1]
        dictionary_path = sys.argv[2]
        output_path = sys.argv[3]
        if len(sys.argv) > 4:
            log_path = sys.argv[4]
        else:
            log_path = None

        dictionary = cls(dictionary_path)
        text = open(text_path, 'r', encoding='utf-8').read()
        text = unicodedata.normalize('NFC', text)
        output, not_found = dictionary.process(text)
        open(output_path, 'w', encoding='utf-8').write(output)
        if not_found and log_path:
            log = 'not found: ' + ', '.join(not_found)
            open(log_path, 'w', encoding='utf-8').write(log)


if __name__ == '__main__':
    GlossingDictionary.main()
