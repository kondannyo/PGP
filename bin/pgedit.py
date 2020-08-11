#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import regex
import itertools
import inspect
import sys
import unicodedata

class Pali_Word:

    def __init__(self, char):
        self.text = char

    def appd(self, char):
        self.text += char
        

class Punc:
    def __init__(self, char):
        self.text = char

    def append(self, char):
        self.text += char


#    def __repr__(self):
#        return "<RuleGroup: {}>".format(self.__dict__)

class Space:
    def __init__(self, char):
        self.text = char

    def append(self, char):
        self.text += char
        

class Pali_Sentence_Parse_FSM:

#    newid = itertools.count()

    def __init__(self, input_str):
#        self.id = next(self.newid)
        self.input_str = input_str
        self.current_state = S_INITIAL
        self.current_list_element = -1
        self.sentence_object_list = []
        self.current_char = ''
        self.state_machine_fail_char = (False, "")
        
    def run(self):
        for c in self.input_str:
            self.process_next(c)
        self.current_state = S_COMPLETE

    def process_next(self, achar):
        self.current_char = achar
        frozen_state = self.current_state
        for transition in FSM_MAP:
            if transition['src'] == frozen_state:
                if self.iterate_re_evaluators(achar, transition):
                    return True
        self.state_machine_fail_char = (True, self.current_char) 
        return False

    def iterate_re_evaluators(self, achar, transition):
        condition = transition['condition_re_compiled']
        if condition.match(achar):
            self.update_state(
                transition['dst'], transition['callback'])
            return True
        return False

    def update_state(self, new_state, callback):
        #print("{} -> {} : {}".format(self.current_char,
        #                             self.current_state,
        #                             new_state))
        self.current_state = new_state
        callback(self)


def transition_new_word(fsm_obj):
    fsm_obj.current_list_element += 1
    new_word = Pali_Word(fsm_obj.current_char)
    fsm_obj.sentence_object_list.append(new_word)


def transition_append_word(fsm_obj):
    fsm_obj.sentence_object_list[fsm_obj.current_list_element].appd(fsm_obj.current_char)


def transition_new_punc(fsm_obj):
    fsm_obj.current_list_element += 1
    new_punc = Punc(fsm_obj.current_char)
    fsm_obj.sentence_object_list.append(new_punc)


def transition_append_punc(fsm_obj):
    fsm_obj.sentence_object_list[fsm_obj.current_list_element].append(fsm_obj.current_char)


def transition_new_space(fsm_obj):
    fsm_obj.current_list_element += 1
    space = Space(fsm_obj.current_char)
    fsm_obj.sentence_object_list.append(space)


def transition_append_space(fsm_obj):
    pass


def transition_end_of_line(fsm_obj):
    print("EOL")


T_NEW_WORD = transition_new_word
T_APPEND_WORD = transition_append_word
T_NEW_PUNC = transition_new_punc
T_APPEND_PUNC = transition_append_punc
T_NEW_SPACE = transition_new_space
T_SPACE = transition_append_space
T_EOL = transition_end_of_line

S_INITIAL = "STATE: INITIAL"
S_PALI_WORD = "STATE: PALI_WORD"
S_PUNC = "STATE: PUNCTUATION"
S_SPACE = "STATE: SPACE"
S_EOL = "STATE: END_OF_LINE"
S_COMPLETE = "STATE: COMPLETE"

# python regex meta-chars. ^ $ * + ? { } [ ] \ | ( )
PALI_REGEX = "[aāiīuūeoṁṅñṇnṃmyrlḷvshkgcjṭḍtdpb]"
#PALI_REGEX = "[A-Za-z|+|-|\d]"			
PUNC_REGEX = "[-—:…_!,‘’“”;\\?0123456789\\{\\}\\(\\)\\.]"

FSM_MAP = (
    #  {'src':, 'dst':, 'condition':, 'callback': },
    {'src': S_INITIAL,
        'dst': S_PALI_WORD,
        'condition': PALI_REGEX,
        'callback': T_NEW_WORD},  # 1
    {'src': S_INITIAL,
        'dst': S_PUNC,
        'condition': PUNC_REGEX,
        'callback': T_NEW_PUNC},  # 2
    {'src': S_PUNC,
        'dst': S_PALI_WORD,
        'condition': PALI_REGEX,
        'callback': T_NEW_WORD},  # 3
    {'src': S_PALI_WORD,
        'dst': S_PALI_WORD,
        'condition': PALI_REGEX,
        'callback': T_APPEND_WORD},  # 4
    {'src': S_PALI_WORD,
        'dst': S_SPACE,
        'condition': " ",
        'callback': T_NEW_SPACE},  # 5
    {'src': S_PALI_WORD,
        'dst': S_PUNC,
        'condition': PUNC_REGEX,
        'callback': T_NEW_PUNC},  # 6
    {'src': S_PALI_WORD,
        'dst': S_EOL,
        'condition': "\\n",
        'callback': T_EOL},  # 7
    {'src': S_PUNC,
        'dst': S_PUNC,
        'condition': PUNC_REGEX,
        'callback': T_APPEND_PUNC},  # 8
    {'src': S_PUNC,
        'dst': S_SPACE,
        'condition': " ",
        'callback': T_NEW_SPACE},  # 9
    {'src': S_PUNC,
        'dst': S_EOL,
        'condition': "\\n",
        'callback': T_EOL},  # 10
    {'src': S_SPACE,
        'dst': S_PUNC,
        'condition': PUNC_REGEX,
        'callback': T_NEW_PUNC},  # 11
    {'src': S_SPACE,
        'dst': S_PALI_WORD,
        'condition': PALI_REGEX,
        'callback': T_NEW_WORD},  # 12
    {'src': S_INITIAL,
        'dst': S_EOL,
        'condition': "\\n",
        'callback': T_EOL})  # 13


for map_item in FSM_MAP:
    map_item['condition_re_compiled'] = regex.compile(map_item['condition'])

def reader(path):
        file = open(str(path), 'r', encoding='utf-8')
        text_file = file.readlines()
        # Remove any decomposed characters
        for line in text_file:
            line = unicodedata.normalize('NFC', line)
        return text_file

if __name__ == "__main__": 
    #example = "“kāya nuttha, bh%ikkhave, kā vippakatā”ti?"
   # if len(sys.argv) < 3:
   #     print('Usage: ' + sys.argv[0] + ' <text.txt> <dictionary.csv> <output.tex>')
   #     sys.exit(1)
    text_path = sys.argv[1]
    text = reader(text_path)
    
    initObject = Pali_Word("init")
    lineObjects = [None]
    linenum = 0
    for line in text:
        newlineObjects = Pali_Sentence_Parse_FSM(line)
        newlineObjects.run()
        print("line: " + str(linenum) + "\n" + newlineObjects.input_str + "\n")
        #for i in inspect.getmembers(newlineObjects):
        #    # Ignores anything starting with underscore
        #    # (that is, private and protected attributes)
        #    if not i[0].startswith('_'):
        #        # Ignores methods
        #        if not inspect.ismethod(i[1]):
        #            print(i)
        lineObjects.append(newlineObjects.sentence_object_list)
        temp = lineObjects(linenum)
        for i in inspect.getmembers(temp):

            # Ignores anything starting with un#derscore
            # (that is, private and protected a#ttributes)
            if not i[0].startswith('_'):
                # Ignores methods
                if not inspect.ismethod(i[1]):
                    print(i)
        linenum += 1
#    for index, lineObjects in enumerate(lineObjects):
#        for i in inspect.getmembers(lineObjects(index)):
#            # Ignores anything starting with underscore
#            # (that is, private and protected attributes)
#            if not i[0].startswith('_'):
#                # Ignores methods
#                if not inspect.ismethod(i[1]):
#                    print(i)



