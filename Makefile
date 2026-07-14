# Makefile — Build helpers for local LaTeX compilation
# Requires: MacTeX or TeX Live with xelatex + latexmk
#
# Targets:
#   make              → compile resume.tex → resume.pdf
#   make watch        → continuous rebuild on file changes
#   make clean        → remove auxiliary files
#   make cleanall     → remove auxiliary files + PDF
#   make view         → open PDF (macOS)
#   make install-mac  → install MacTeX + required font package

MAIN     = resume
STYLES   = styles/resume.sty
SECTIONS = sections/*.tex
VIEWER   = open   # macOS; change to 'evince' or 'zathura' on Linux

.PHONY: all clean cleanall view watch install-mac

## Default: compile via latexmk (uses .latexmkrc for XeLaTeX settings)
all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(STYLES) $(SECTIONS)
	latexmk $(MAIN).tex

## Open PDF in system viewer (macOS)
view: $(MAIN).pdf
	$(VIEWER) $(MAIN).pdf

## Continuous rebuild on file change (requires fswatch on macOS)
watch:
	@echo "Watching for changes... (install fswatch: brew install fswatch)"
	fswatch -o $(MAIN).tex $(STYLES) $(SECTIONS) | xargs -n1 -I{} latexmk $(MAIN).tex

## Remove auxiliary build files (keep PDF)
clean:
	latexmk -c $(MAIN).tex

## Remove everything including PDF
cleanall:
	latexmk -C $(MAIN).tex

## Install MacTeX + required font (macOS + Homebrew)
install-mac:
	@echo "Step 1: Installing MacTeX (this may take a while)..."
	brew install --cask mactex-no-gui
	@echo ""
	@echo "Step 2: Restart your terminal, then run:"
	@echo "  sudo tlmgr update --self"
	@echo "  sudo tlmgr install sourcesanspro"
	@echo ""
	@echo "Step 3: Then compile with:"
	@echo "  make"
