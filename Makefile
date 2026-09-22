# Makefile — Build helpers for local LaTeX compilation
# Requires: MacTeX or TeX Live with xelatex + latexmk
#
# Targets:
#   make              → compile resume.tex → resume.pdf
#   make techlead     → Tech Lead CV (English)
#   make techlead-es  → Tech Lead CV (Spanish)
#   make all-versions → every CV variant
#   make watch        → continuous rebuild on file changes
#   make clean        → remove auxiliary files
#   make cleanall     → remove auxiliary files + PDF
#   make view         → open PDF (macOS)
#   make install-mac  → install MacTeX + required font package

MAIN            = resume
MAIN_ES         = resume-es
MAIN_BACKEND_AI    = resume-backend-ai
MAIN_BACKEND_AI_ES = resume-backend-ai-es
MAIN_TECHLEAD      = resume-techlead
MAIN_TECHLEAD_ES   = resume-techlead-es
STYLES          = styles/resume.sty
SECTIONS        = sections/*.tex
SECTIONS_ES     = es/*.tex
SECTIONS_BAI    = backend-ai/*.tex
SECTIONS_BAI_ES = backend-ai-es/*.tex
SECTIONS_TL     = techlead/*.tex
SECTIONS_TL_ES  = techlead-es/*.tex
VIEWER          = open   # macOS; change to 'evince' or 'zathura' on Linux
DOCKER_IMG      = texlive/texlive:latest

.PHONY: all en es both backend-ai backend-ai-es backend-ai-both \
        techlead techlead-es techlead-both all-versions \
        clean cleanall view view-es view-backend-ai view-backend-ai-es \
        view-techlead view-techlead-es \
        watch docker docker-es docker-both install-mac

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

## Both main versions
both: en es

## Backend + Node.js + AI Agents — English
backend-ai: $(MAIN_BACKEND_AI).pdf

$(MAIN_BACKEND_AI).pdf: $(MAIN_BACKEND_AI).tex $(STYLES) $(SECTIONS) $(SECTIONS_BAI)
	latexmk $(MAIN_BACKEND_AI).tex

## Backend + Node.js + AI Agents — Spanish
backend-ai-es: $(MAIN_BACKEND_AI_ES).pdf

$(MAIN_BACKEND_AI_ES).pdf: $(MAIN_BACKEND_AI_ES).tex $(STYLES) $(SECTIONS_ES) $(SECTIONS_BAI_ES)
	latexmk $(MAIN_BACKEND_AI_ES).tex

## Both backend AI versions
backend-ai-both: backend-ai backend-ai-es

## Tech Lead — English
techlead: $(MAIN_TECHLEAD).pdf

$(MAIN_TECHLEAD).pdf: $(MAIN_TECHLEAD).tex $(STYLES) $(SECTIONS) $(SECTIONS_TL)
	latexmk $(MAIN_TECHLEAD).tex

## Tech Lead — Spanish
techlead-es: $(MAIN_TECHLEAD_ES).pdf

$(MAIN_TECHLEAD_ES).pdf: $(MAIN_TECHLEAD_ES).tex $(STYLES) $(SECTIONS_ES) $(SECTIONS_TL_ES)
	latexmk $(MAIN_TECHLEAD_ES).tex

## Both Tech Lead versions
techlead-both: techlead techlead-es

## All six versions
all-versions: en es backend-ai backend-ai-es techlead techlead-es

## Open English PDF (macOS)
view: $(MAIN).pdf
	$(VIEWER) $(MAIN).pdf

## Open Spanish PDF (macOS)
view-es: $(MAIN_ES).pdf
	$(VIEWER) $(MAIN_ES).pdf

## Open Backend AI English PDF (macOS)
view-backend-ai: $(MAIN_BACKEND_AI).pdf
	$(VIEWER) $(MAIN_BACKEND_AI).pdf

## Open Backend AI Spanish PDF (macOS)
view-backend-ai-es: $(MAIN_BACKEND_AI_ES).pdf
	$(VIEWER) $(MAIN_BACKEND_AI_ES).pdf

## Open Tech Lead English PDF (macOS)
view-techlead: $(MAIN_TECHLEAD).pdf
	$(VIEWER) $(MAIN_TECHLEAD).pdf

## Open Tech Lead Spanish PDF (macOS)
view-techlead-es: $(MAIN_TECHLEAD_ES).pdf
	$(VIEWER) $(MAIN_TECHLEAD_ES).pdf

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
	latexmk -c $(MAIN_BACKEND_AI).tex
	latexmk -c $(MAIN_BACKEND_AI_ES).tex
	latexmk -c $(MAIN_TECHLEAD).tex
	latexmk -c $(MAIN_TECHLEAD_ES).tex

## Remove everything including PDFs
cleanall:
	latexmk -C $(MAIN).tex
	latexmk -C $(MAIN_ES).tex
	latexmk -C $(MAIN_BACKEND_AI).tex
	latexmk -C $(MAIN_BACKEND_AI_ES).tex
	latexmk -C $(MAIN_TECHLEAD).tex
	latexmk -C $(MAIN_TECHLEAD_ES).tex

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
