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
MAIN_ES  = resume-es
STYLES   = styles/resume.sty
SECTIONS = sections/*.tex
SECTIONS_ES = es/*.tex
VIEWER   = open   # macOS; change to 'evince' or 'zathura' on Linux
DOCKER_IMG = texlive/texlive:latest

.PHONY: all en es both clean cleanall view view-es watch docker docker-es docker-both install-mac

## Default: compile English version
all: $(MAIN).pdf

## English version
en: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(STYLES) $(SECTIONS)
	latexmk $(MAIN).tex

## Spanish version
es: $(MAIN_ES).pdf

$(MAIN_ES).pdf: $(MAIN_ES).tex $(STYLES) $(SECTIONS_ES)
	latexmk $(MAIN_ES).tex

## Both versions
both: en es

## Open English PDF (macOS)
view: $(MAIN).pdf
	$(VIEWER) $(MAIN).pdf

## Open Spanish PDF (macOS)
view-es: $(MAIN_ES).pdf
	$(VIEWER) $(MAIN_ES).pdf

## Continuous rebuild on file change (requires fswatch on macOS)
watch:
	@echo "Watching for changes... (install fswatch: brew install fswatch)"
	fswatch -o $(MAIN).tex $(STYLES) $(SECTIONS) | xargs -n1 -I{} latexmk $(MAIN).tex

## ── Docker targets (no MacTeX required) ─────────────────────

## Compile English via Docker
docker:
	docker run --rm -v $(PWD):/workspace -w /workspace $(DOCKER_IMG) \
		latexmk -xelatex $(MAIN).tex
	@echo "✓  resume.pdf generated"

## Compile Spanish via Docker
docker-es:
	docker run --rm -v $(PWD):/workspace -w /workspace $(DOCKER_IMG) \
		latexmk -xelatex $(MAIN_ES).tex
	@echo "✓  resume-es.pdf generated"

## Compile both versions via Docker
docker-both:
	docker run --rm -v $(PWD):/workspace -w /workspace $(DOCKER_IMG) \
		sh -c "latexmk -xelatex $(MAIN).tex && latexmk -xelatex $(MAIN_ES).tex"
	@echo "✓  resume.pdf + resume-es.pdf generated"

## Remove auxiliary build files (keep PDFs)
clean:
	latexmk -c $(MAIN).tex
	latexmk -c $(MAIN_ES).tex

## Remove everything including PDFs
cleanall:
	latexmk -C $(MAIN).tex
	latexmk -C $(MAIN_ES).tex

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
	@echo "  make both"
