# Makefile — Build helpers for local LaTeX compilation
# Requires: TeX Live or MacTeX with xelatex installed

MAIN     = main
COMPILER = xelatex
FLAGS    = -interaction=nonstopmode -shell-escape
VIEWER   = open   # macOS; use 'evince' or 'zathura' on Linux

.PHONY: all clean view watch

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex sections/*.tex
	$(COMPILER) $(FLAGS) $(MAIN).tex
	$(COMPILER) $(FLAGS) $(MAIN).tex   # second pass for cross-references

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz \
	      *.bbl *.blg *.idx *.ind *.ilg *.bcf *.run.xml *.nav *.snm *.vrb

view: $(MAIN).pdf
	$(VIEWER) $(MAIN).pdf

watch:
	@echo "Watching for changes... (requires fswatch)"
	fswatch -o $(MAIN).tex sections/*.tex | xargs -n1 -I{} make

install-mac:
	@echo "Installing MacTeX (requires Homebrew)..."
	brew install --cask mactex-no-gui
	@echo "Restart terminal after installation then run 'make'"
