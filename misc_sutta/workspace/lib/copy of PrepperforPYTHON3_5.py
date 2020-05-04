# LaTeX helper to preprocess a large file into smaller subfiles.

import os
from pathlib import Path
import re
import unicodedata


class Prepper(object):

    TEX_HEADER = '% This is an auto-generated file. Do not edit!\n\n'
    BLOCK_RE = re.compile(r'^@(@*)\s*(\S+)\s*$')

    def __init__(self, input_dir, output_dir):
        self.input_dir = Path(input_dir)
        self.output_dir = Path(output_dir)
        self.processors = []

    def match(self, regexp, method):
        self.processors.append((re.compile(regexp), method))

    def compile(self):
        self.output_dir.mkdir(parents=True, exist_ok=True)
        for file in self.input_dir.glob('**/*.tex'):
            blocks = self._process_file(file.open(encoding='utf-8'))
            self._output_blocks(blocks)

    def _process_file(self, file):
        tag = None
        blocks = {}
        block = ''
        def end_block():
            nonlocal tag, block, blocks
            if tag is not None:
                if tag not in blocks:
                    blocks[tag] = []
                blocks[tag].append(block)
                block = ''
                tag = None
        for line in file:
            line = unicodedata.normalize('NFC', line)
            match = self.BLOCK_RE.match(line)
            if match:
                if len(match.group(1)) > 0: # Escape line
                    block += line[1:]
                else:
                    end_block()
                    tag = match.group(2)
            else:
                block += line
        if tag:
            end_block()
        for tag, block in blocks.items():
            blocks[tag] = '\n'.join(block).strip()
        return blocks

    def _output_blocks(self, blocks):
        for tag, text in blocks.items():
            for regexp, method in self.processors:
                if regexp.match(tag):
                    text = method(tag, text)
            text = self.TEX_HEADER + text
            output_path = self.output_dir / tag
            output_path.open('w', encoding='utf-8').write(text)
