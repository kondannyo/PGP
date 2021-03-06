### Latex.Make
# Author: kondannyo bhikkhu

# This is a simple makefile for compiling LaTeX documents.


SOURCE_DIR = sc_po_text/
BIN_DIR = ../bin/
BUILD_DIR = build/
TXMKR_BUILD_DIR = tex_build/

.PHONY: all
.DEFAULT: all
all:	$(BUILD_DIR)/mn_vagga_01.pdf \
	$(BUILD_DIR)/mn_vagga_02.pdf \
	$(BUILD_DIR)/mn_vagga_03.pdf \
	$(BUILD_DIR)/mn_vagga_04.pdf \
	$(BUILD_DIR)/mn_vagga_05.pdf \
	$(BUILD_DIR)/mn_vagga_06.pdf \
	$(BUILD_DIR)/mn_vagga_07.pdf \
	$(BUILD_DIR)/mn_vagga_08.pdf \
	$(BUILD_DIR)/mn_vagga_09.pdf \
	$(BUILD_DIR)/mn_vagga_10.pdf \
	$(BUILD_DIR)/mn_vagga_11.pdf \
	$(BUILD_DIR)/mn_vagga_12.pdf \
	$(BUILD_DIR)/mn_vagga_13.pdf \
	$(BUILD_DIR)/mn_vagga_14.pdf \
	$(BUILD_DIR)/mn_vagga_15.pdf 


### Compilation Flags
LATEX_FLAGS  = -xelatex -halt-on-error -output-directory=$(BUILD_DIR)

BUILD_SOURCE_FILES = $(wildcard $(SOURCE_DIR)/*_sc_pali)
BUILD_TEX_TARGETS = $(patsubst $(SOURCE_DIR)/%_sc_pali, $(TXMKR_BUILD_DIR)/%.tex, $(wildcard $(SOURCE_DIR)/*_sc_pali))

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

### Core Latex Generation
# Note the use of order-only prerequisites (prerequisites following the |).
# Order-only prerequisites do not affect the target -- if the order-only
# prerequisite has changed and none of the normal prerequisites have changed
# then this target IS NOT run.

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(TXMKR_BUILD_DIR):
	mkdir -p $(TXMKR_BUILD_DIR)

$(TXMKR_BUILD_DIR)/%.tex: $(SOURCE_DIR)/%_sc_pali $(SOURCE_DIR)/%_sc_engl $(BIN_FILES) $(TXMKR_BUILD_DIR) 
	$(BIN_DIR)/txmkr -n --output=$@ $< $(word 2,$^)

#build/$(PROJECT).aux: $(TEX_FILES) $(STY_FILES) | build/
#	xelatex $(LATEX_FLAGS) $(PROJECT).tex

#build/$(PROJECT).bbl: $(BIB_FILES) $(BST_FILES) | build/$(PROJECT).aux
#ifneq ($(BIB_FILES),)
#	cp *.bib build
#	( cd build && bibtex $(PROJECT) )
#	xelatex $(LATEX_FLAGS) $(PROJECT)
#endif
	
$(BUILD_DIR)/mn_vagga_01.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_01.tex

$(BUILD_DIR)/mn_vagga_02.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_02.tex

$(BUILD_DIR)/mn_vagga_03.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_03.tex

$(BUILD_DIR)/mn_vagga_04.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_04.tex

$(BUILD_DIR)/mn_vagga_05.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_05.tex

$(BUILD_DIR)/mn_vagga_06.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_06.tex

$(BUILD_DIR)/mn_vagga_07.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_07.tex

$(BUILD_DIR)/mn_vagga_08.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_08.tex

$(BUILD_DIR)/mn_vagga_09.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_09.tex

$(BUILD_DIR)/mn_vagga_10.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_10.tex

$(BUILD_DIR)/mn_vagga_11.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_11.tex

$(BUILD_DIR)/mn_vagga_12.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_12.tex

$(BUILD_DIR)/mn_vagga_13.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_13.tex

$(BUILD_DIR)/mn_vagga_14.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_14.tex

$(BUILD_DIR)/mn_vagga_15.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) mn_vagga_15.tex

