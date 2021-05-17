### Latex.Make
# Author: kondannyo bhikkhu

# This is a simple makefile for compiling LaTeX documents.


# subdirs := $(wildcard */)
# sources := $(wildcard $(addsuffix *.cpp,$(subdirs)))
# objects := $(patsubst %.cpp,%.o,$(sources))

SUBDIRS := sc_po_text/sn*
#SOURCE_DIR = $(wildcard $(addsuffix sc_po_text/, $(SUBDIRS)))
BIN_DIR = ../bin/
BUILD_DIR = build/
TXMKR_BUILD_DIR = tex_build

.PHONY: all
.DEFAULT: all
all: $(BUILD_DIR)/sn01.pdf \
	$(BUILD_DIR)/sn02.pdf \
	$(BUILD_DIR)/sn03.pdf \
	$(BUILD_DIR)/sn04.pdf \
	$(BUILD_DIR)/sn05.pdf \
	$(BUILD_DIR)/sn06.pdf \
	$(BUILD_DIR)/sn07.pdf \
	$(BUILD_DIR)/sn08.pdf \
	$(BUILD_DIR)/sn09.pdf \
	$(BUILD_DIR)/sn10.pdf \
	$(BUILD_DIR)/sn11.pdf \
	$(BUILD_DIR)/sn12.pdf \
	$(BUILD_DIR)/sn13.pdf \
	$(BUILD_DIR)/sn14.pdf \
	$(BUILD_DIR)/sn15.pdf \
	$(BUILD_DIR)/sn16.pdf \
	$(BUILD_DIR)/sn17.pdf \
	$(BUILD_DIR)/sn18.pdf \
	$(BUILD_DIR)/sn19.pdf \
	$(BUILD_DIR)/sn20.pdf \
	$(BUILD_DIR)/sn21.pdf \
	$(BUILD_DIR)/sn22.pdf \
	$(BUILD_DIR)/sn23.pdf \
	$(BUILD_DIR)/sn24.pdf \
	$(BUILD_DIR)/sn25.pdf \
	$(BUILD_DIR)/sn26.pdf \
	$(BUILD_DIR)/sn27.pdf \
	$(BUILD_DIR)/sn28.pdf \
	$(BUILD_DIR)/sn29.pdf \
	$(BUILD_DIR)/sn30.pdf \
	$(BUILD_DIR)/sn31.pdf \
	$(BUILD_DIR)/sn32.pdf \
	$(BUILD_DIR)/sn33.pdf \
	$(BUILD_DIR)/sn34.pdf \
	$(BUILD_DIR)/sn35.pdf \
	$(BUILD_DIR)/sn36.pdf \
	$(BUILD_DIR)/sn37.pdf \
	$(BUILD_DIR)/sn38.pdf \
	$(BUILD_DIR)/sn39.pdf \
	$(BUILD_DIR)/sn40.pdf \
	$(BUILD_DIR)/sn41.pdf \
	$(BUILD_DIR)/sn42.pdf \
	$(BUILD_DIR)/sn43.pdf \
	$(BUILD_DIR)/sn44.pdf \
	$(BUILD_DIR)/sn45.pdf \
	$(BUILD_DIR)/sn46.pdf \
	$(BUILD_DIR)/sn47.pdf \
	$(BUILD_DIR)/sn48.pdf \
	$(BUILD_DIR)/sn49.pdf \
	$(BUILD_DIR)/sn50.pdf \
	$(BUILD_DIR)/sn51.pdf \
	$(BUILD_DIR)/sn52.pdf \
	$(BUILD_DIR)/sn53.pdf \
	$(BUILD_DIR)/sn55.pdf \
	$(BUILD_DIR)/sn55.pdf \
	$(BUILD_DIR)/sn56.pdf

### Compilation Flags
LATEX_FLAGS  = -xelatex -halt-on-error -output-directory=$(BUILD_DIR)

BUILD_SOURCE_FILES_PALI = $(wildcard $(SUBDIRS)/*_sc_pali)
BUILD_SOURCE_FILES_ENGL = $(wildcard $(SUBDIRS)/*_sc_engl)
BUILD_SOURCE_FILESNAMES = $(notdir $(BUILD_SOURCE_FILES_PALI))
BUILD_TEX_TARGETS = $(patsubst %_sc_pali, $(TXMKR_BUILD_DIR)/%.tex, $(BUILD_SOURCE_FILESNAMES))

### File Types (for dependancies)
TEX_FILES = \
	../share/PM_A5_Definition.tex \
	../share/PM_Font_TGT.tex \
	../share/PM_BWDefintions.tex \
	../share/PM_Tri_Gloss.tex \
	../share/PM_UnicodeCharacterFix.tex \
	$(BUILD_TEX_TARGETS) 
BIN_FILES = \
	$(BIN_DIR)/txmkr \
	$(BIN_DIR)/txmakerwrapper.py \
	$(BIN_DIR)/glosstext.py

STY_FILES = $(shell find . -name '*.sty')
	#share/PM_AnsiADefinition.tex 
	#share/PM_AnsiBDefinition.tex 
	#share/PM_Font_TGP.tex} # TexGyrePagella 
	#share/PM_ColorDefintions.tex 
	#BIB_FILES = $(shell find . -name '*.bib')
	#CLS_FILES = $(shell find . -name '*.cls')
	#BST_FILES = $(shell find . -name '*.bst')
	#EPS_FILES = $(shell find . -name '*.eps')


### Standard PDF Viewers

UNAME := $(shell uname)

ifeq ($(UNAME), Linux)
PDFVIEWER = evince
endif
ifeq ($(UNAME), Darwin)
PDFVIEWER = open
endif


### Clean

clean::
	rm -rf $(BUILD_DIR)
cleantex::
	rm -rf $(TXMKR_BUILD_DIR)
variables::
	@echo SUBDIRS $(SUBDIRS) 
	@echo BUILD_SOURCE_FILES $(BUILD_SOURCE_FILES)
	@echo BUILD_TEX_TARGETS: $(BUILD_TEX_TARGETS) 

### Core Latex Generation
# Note the use of order-only prerequisites (prerequisites following the |).
# Order-only prerequisites do not affect the target -- if the order-only
# prerequisite has changed and none of the normal prerequisites have changed
# then this target IS NOT run.

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(TXMKR_BUILD_DIR):
	mkdir -p $(TXMKR_BUILD_DIR)

$(TXMKR_BUILD_DIR)/%.tex: $(SUBDIRS)/%_sc_pali $(SUBDIRS)/%_sc_engl $(BIN_FILES) $(TXMKR_BUILD_DIR) 
	$(BIN_DIR)/txmkr -n --output=$@ $< $(word 2,$^)

#build/$(PROJECT).aux: $(TEX_FILES) $(STY_FILES) | build/
#	xelatex $(LATEX_FLAGS) $(PROJECT).tex

#build/$(PROJECT).bbl: $(BIB_FILES) $(BST_FILES) | build/$(PROJECT).aux
#ifneq ($(BIB_FILES),)
#	cp *.bib build
#	( cd build && bibtex $(PROJECT) )
#	xelatex $(LATEX_FLAGS) $(PROJECT)
#endif
	
$(BUILD_DIR)/sn01.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn01.tex

$(BUILD_DIR)/sn02.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn02.tex

$(BUILD_DIR)/sn03.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn03.tex

$(BUILD_DIR)/sn04.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn04.tex

$(BUILD_DIR)/sn05.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn05.tex

$(BUILD_DIR)/sn06.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn06.tex

$(BUILD_DIR)/sn07.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn07.tex

$(BUILD_DIR)/sn08.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn08.tex

$(BUILD_DIR)/sn09.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn09.tex

$(BUILD_DIR)/sn10.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn10.tex

$(BUILD_DIR)/sn11.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn11.tex

$(BUILD_DIR)/sn12.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn12.tex

$(BUILD_DIR)/sn13.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn13.tex

$(BUILD_DIR)/sn14.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn14.tex

$(BUILD_DIR)/sn15.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn15.tex

$(BUILD_DIR)/sn16.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn16.tex

$(BUILD_DIR)/sn17.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn17.tex

$(BUILD_DIR)/sn18.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn18.tex

$(BUILD_DIR)/sn19.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn19.tex

$(BUILD_DIR)/sn20.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn20.tex

$(BUILD_DIR)/sn21.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn21.tex

$(BUILD_DIR)/sn22.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn22.tex

$(BUILD_DIR)/sn23.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn23.tex

$(BUILD_DIR)/sn24.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn24.tex

$(BUILD_DIR)/sn25.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn25.tex

$(BUILD_DIR)/sn26.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn26.tex

$(BUILD_DIR)/sn27.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn27.tex

$(BUILD_DIR)/sn28.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn28.tex

$(BUILD_DIR)/sn29.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn29.tex

$(BUILD_DIR)/sn30.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn30.tex

$(BUILD_DIR)/sn31.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn31.tex

$(BUILD_DIR)/sn32.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn32.tex

$(BUILD_DIR)/sn33.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn33.tex

$(BUILD_DIR)/sn34.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn34.tex

$(BUILD_DIR)/sn35.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn35.tex

$(BUILD_DIR)/sn36.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn36.tex

$(BUILD_DIR)/sn37.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn37.tex

$(BUILD_DIR)/sn38.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn38.tex

$(BUILD_DIR)/sn39.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn39.tex

$(BUILD_DIR)/sn40.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn40.tex

$(BUILD_DIR)/sn41.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn41.tex

$(BUILD_DIR)/sn42.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn42.tex

$(BUILD_DIR)/sn43.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn43.tex

$(BUILD_DIR)/sn44.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn44.tex

$(BUILD_DIR)/sn45.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn45.tex

$(BUILD_DIR)/sn46.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn46.tex

$(BUILD_DIR)/sn47.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn47.tex

$(BUILD_DIR)/sn48.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn48.tex

$(BUILD_DIR)/sn49.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn49.tex

$(BUILD_DIR)/sn50.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn50.tex

$(BUILD_DIR)/sn51.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn51.tex

$(BUILD_DIR)/sn52.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn52.tex

$(BUILD_DIR)/sn53.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn53.tex

$(BUILD_DIR)/sn55.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn55.tex

$(BUILD_DIR)/sn55.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn55.tex

$(BUILD_DIR)/sn56.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) sn56.tex
