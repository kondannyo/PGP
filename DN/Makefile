### Latex.Make
# Author: kondannyo bhikkhu

# This is a simple makefile for compiling LaTeX documents.


# subdirs := $(wildcard */)
# sources := $(wildcard $(addsuffix *.cpp,$(subdirs)))
# objects := $(patsubst %.cpp,%.o,$(sources))

SUBDIR := sc_po_text/
#SOURCE_DIR = $(wildcard $(addsuffix sc_po_text/, $(SUBDIR)))
BIN_DIR = ../bin/
BUILD_DIR = build/
TXMKR_BUILD_DIR = tex_build

.PHONY: all
.DEFAULT: all
all: $(BUILD_DIR)/dn01.pdf \
	$(BUILD_DIR)/dn02.pdf \
	$(BUILD_DIR)/dn03.pdf \
	$(BUILD_DIR)/dn04.pdf \
	$(BUILD_DIR)/dn05.pdf \
	$(BUILD_DIR)/dn06.pdf \
	$(BUILD_DIR)/dn07.pdf \
	$(BUILD_DIR)/dn08.pdf \
	$(BUILD_DIR)/dn09.pdf \
	$(BUILD_DIR)/dn10.pdf \
	$(BUILD_DIR)/dn11.pdf \
	$(BUILD_DIR)/dn12.pdf \
	$(BUILD_DIR)/dn13.pdf \
	$(BUILD_DIR)/dn14.pdf \
	$(BUILD_DIR)/dn15.pdf \
	$(BUILD_DIR)/dn16.pdf \
	$(BUILD_DIR)/dn17.pdf \
	$(BUILD_DIR)/dn18.pdf \
	$(BUILD_DIR)/dn19.pdf \
	$(BUILD_DIR)/dn20.pdf \
	$(BUILD_DIR)/dn21.pdf \
	$(BUILD_DIR)/dn22.pdf \
	$(BUILD_DIR)/dn23.pdf \
	$(BUILD_DIR)/dn24.pdf \
	$(BUILD_DIR)/dn25.pdf \
	$(BUILD_DIR)/dn26.pdf \
	$(BUILD_DIR)/dn27.pdf \
	$(BUILD_DIR)/dn28.pdf \
	$(BUILD_DIR)/dn29.pdf \
	$(BUILD_DIR)/dn30.pdf \
	$(BUILD_DIR)/dn31.pdf \
	$(BUILD_DIR)/dn32.pdf \
	$(BUILD_DIR)/dn33.pdf \
	$(BUILD_DIR)/dn34.pdf 

### Compilation Flags
LATEX_FLAGS  = -xelatex -halt-on-error -output-directory=$(BUILD_DIR)

BUILD_SOURCE_FILES_PALI = $(wildcard $(SUBDIR)/*_sc_pali)
BUILD_SOURCE_FILES_ENGL = $(wildcard $(SUBDIR)/*_sc_engl)
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
	@echo SUBDIR $(SUBDIR) 
	@echo BUILD_SOURCE_FILES_PALI $(BUILD_SOURCE_FILES_PALI)
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

$(TXMKR_BUILD_DIR)/%.tex: $(SUBDIR)/%_sc_pali $(SUBDIR)/%_sc_engl $(BIN_FILES) $(TXMKR_BUILD_DIR) 
	$(BIN_DIR)/txmkr -n --output=$@ $< $(word 2,$^)

#build/$(PROJECT).aux: $(TEX_FILES) $(STY_FILES) | build/
#	xelatex $(LATEX_FLAGS) $(PROJECT).tex

#build/$(PROJECT).bbl: $(BIB_FILES) $(BST_FILES) | build/$(PROJECT).aux
#ifneq ($(BIB_FILES),)
#	cp *.bib build
#	( cd build && bibtex $(PROJECT) )
#	xelatex $(LATEX_FLAGS) $(PROJECT)
#endif
	
$(BUILD_DIR)/dn01.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn01.tex

$(BUILD_DIR)/dn02.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn02.tex

$(BUILD_DIR)/dn03.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn03.tex

$(BUILD_DIR)/dn04.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn04.tex

$(BUILD_DIR)/dn05.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn05.tex

$(BUILD_DIR)/dn06.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn06.tex

$(BUILD_DIR)/dn07.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn07.tex

$(BUILD_DIR)/dn08.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn08.tex

$(BUILD_DIR)/dn09.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn09.tex

$(BUILD_DIR)/dn10.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn10.tex

$(BUILD_DIR)/dn11.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn11.tex

$(BUILD_DIR)/dn12.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn12.tex

$(BUILD_DIR)/dn13.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn13.tex

$(BUILD_DIR)/dn14.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn14.tex

$(BUILD_DIR)/dn15.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn15.tex

$(BUILD_DIR)/dn16.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn16.tex

$(BUILD_DIR)/dn17.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn17.tex

$(BUILD_DIR)/dn18.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn18.tex

$(BUILD_DIR)/dn19.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn19.tex

$(BUILD_DIR)/dn20.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn20.tex

$(BUILD_DIR)/dn21.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn21.tex

$(BUILD_DIR)/dn22.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn22.tex

$(BUILD_DIR)/dn23.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn23.tex

$(BUILD_DIR)/dn24.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn24.tex

$(BUILD_DIR)/dn25.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn25.tex

$(BUILD_DIR)/dn26.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn26.tex

$(BUILD_DIR)/dn27.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn27.tex

$(BUILD_DIR)/dn28.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn28.tex

$(BUILD_DIR)/dn29.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn29.tex

$(BUILD_DIR)/dn30.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn30.tex

$(BUILD_DIR)/dn31.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn31.tex

$(BUILD_DIR)/dn32.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn32.tex

$(BUILD_DIR)/dn33.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn33.tex

$(BUILD_DIR)/dn34.pdf: $(TEX_FILES) $(BIN_FILES) | $(BUILD_DIR)
	latexmk $(LATEX_FLAGS) dn34.tex

