import itertools
import os
import shutil
import types
from pathlib import PurePath, Path
from doit.task import clean_targets


BASE_DIR = Path(__file__).resolve().parent # this directory
WORK_DIR = BASE_DIR.parent # Patimokkha
RULES_DIR = WORK_DIR / 'Rules'
PREP_DIR = WORK_DIR / 'Prep'
DICTIONARY_FILE = WORK_DIR / 'fullpatimokkhadictionary.csv'

COMMON_SOURCE_FILES = [
    BASE_DIR / 'dodo.py',
]
PYTHON_SOURCE_FILES = [
    BASE_DIR / 'lib' / 'GlossingDictionary.py',
    BASE_DIR / 'lib' / 'Prepper.py',
    BASE_DIR / 'PatimokkhaDictionary.py',
    BASE_DIR / 'Compile.py',
]
LATEX_SOURCE_FILES = [
    WORK_DIR / 'PM_AnsiADefinition.tex',
    WORK_DIR / 'PM_BWDefintions.tex',
    WORK_DIR / 'PM_GlossingDefintions.tex',
    WORK_DIR / 'Index.tex',
    WORK_DIR / 'PatimokkhaCOMBINED.tex',
]


# Normalize a path or lists of paths
def n(*files):
    result = []
    for f in files:
        t = type(f)
        if t is str or isinstance(f, PurePath):
            result.append(str(f))
        elif t is list or t is types.GeneratorType:
            # Magic...
            result += list(itertools.chain(*map(n, list(f))))
        else:
            raise Exception('Unknown type %s' % t)
    return result


def task_prep():
    return {
        'actions': ['python compile.py'],
        'targets': ['Patimokkha/Prep'],
        'file_dep': n(
            RULES_DIR.glob('*.tex'),
            COMMON_SOURCE_FILES, PYTHON_SOURCE_FILES),
        'clean': [clean_prep],
    }

def clean_prep():
    shutil.rmtree(str(PREP_DIR))

def task_latex():
    return {
        'actions': ['latexmk -xelatex -pdf -cd Patimokkha/PatimokkhaCOMBINED.tex'],
        'targets': ['Patimokkha/PatimokkhaCOMBINED.pdf'],
        'file_dep': n(
            PREP_DIR.glob('*.tex'),
            LATEX_SOURCE_FILES,
            COMMON_SOURCE_FILES
        ),
        'clean': [clean_latex],
    }

def clean_latex():
    os.system('latexmk -C -xelatex -pdf -cd Patimokkha/PatimokkhaCOMBINED.tex')
