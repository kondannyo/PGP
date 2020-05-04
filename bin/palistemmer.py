import nltk, re, pprint
from nltk import word_tokenize
from nltk.tokenize.moses import MosesDetokenizer

nltk.data.path.append("/media/removable/64_EXT4DATA/nltk_data/")
from nltk.corpus import PlaintextCorpusReader
corpus_root = '/media/removable/64_EXT4DATA/suttapitakatextfiles/'
pali_texts = PlaintextCorpusReader(corpus_root, '.*\.ptxt')
english_texts = PlaintextCorpusReader(corpus_root, 'MNEng.txt')

def ie_preprocess(document):
    sentences = nltk.sent_tokenize(document)
    words = [nltk.word_tokenize(sent) for sent in sentences]
    pos = [nltk.pos_tag(sent) for sent in sentences]
    return sentences, words, pos

#eng_sent, eng_words, eng_pos = ie_preprocess(english_texts)
detokenizer = MosesDetokenizer()

#print(pali_texts.raw())
for sent in pali_texts.Sents():
#    untoked = detokenizer.detokenize(sent, return_str=True)
    print(sent)
    
    

    

    
