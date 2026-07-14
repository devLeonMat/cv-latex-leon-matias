# cv-latex-leon-matias

Professional resume of **Roslin Leon Matias** — Lead Software Engineer.
Built with **LaTeX (XeLaTeX)** for premium typesetting. Auto-compiled by GitHub Actions on every push.

[![Build CV PDF](https://github.com/devLeonMat/cv-latex-leon-matias/actions/workflows/build-cv.yml/badge.svg)](https://github.com/devLeonMat/cv-latex-leon-matias/actions/workflows/build-cv.yml)

---

## ⬇️ Download Latest PDF

The CV is compiled automatically on every push to `main`.

**[Download latest resume.pdf →](https://github.com/devLeonMat/cv-latex-leon-matias/releases/tag/latest)**

---

## 🗂 Project structure

```
cv-latex-leon-matias/
│
├── resume.tex                  # Root document — header + section imports
│
├── sections/
│   ├── summary.tex             # Professional summary + industry strip
│   ├── skills.tex              # Technical skills (single-column, ATS-safe)
│   ├── experience.tex          # Work history + additional exp + highlights
│   ├── education.tex           # Degree
│   ├── certifications.tex      # AWS cert
│   └── languages.tex           # ES / EN
│
├── styles/
│   └── resume.sty              # All styles: geometry, fonts, colors, commands
│
├── assets/                     # Photos, logos (not used in ATS version)
│
├── .github/
│   └── workflows/
│       └── build-cv.yml        # CI: compile PDF → publish GitHub Release
│
├── .latexmkrc                  # latexmk config (uses XeLaTeX)
├── Makefile                    # Local build helper
├── .editorconfig               # Editor formatting rules
├── .gitignore
└── README.md
```

---

## 🔧 Local compilation

### Option A — Overleaf (recommended, no local install needed)

1. Download this repo as a ZIP
2. Upload it to [overleaf.com](https://www.overleaf.com) as a new project
3. Set the compiler to **XeLaTeX** in Menu → Settings
4. Click **Recompile**

### Option B — MacTeX (macOS)

```bash
# 1. Install MacTeX (Homebrew)
brew install --cask mactex-no-gui

# 2. Restart terminal, then install the font
sudo tlmgr update --self
sudo tlmgr install sourcesanspro

# 3. Compile
make            # → resume.pdf
make view       # opens PDF in Preview
make clean      # remove auxiliary files
```

### Option C — VS Code + LaTeX Workshop

1. Install the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension
2. Install MacTeX or TeX Live (see Option B)
3. Set LaTeX Workshop recipe to **latexmk (xelatex)** in VS Code settings
4. Open `resume.tex` and press **Ctrl/Cmd+Alt+B** to build

### Font requirement

This project uses **Source Sans 3** (formerly Source Sans Pro) via `fontspec`.
Install locally with: `sudo tlmgr install sourcesanspro`
On Overleaf, the font is available by default.

---

## ☁️ CI/CD (GitHub Actions)

Every push to `main` triggers `.github/workflows/build-cv.yml`:

1. Checks out the repository
2. Compiles `resume.tex` with **XeLaTeX** inside the official TeX Live Docker image
3. Installs `sourcesanspro` font package automatically
4. Uploads `resume.pdf` as a workflow artifact (90-day retention)
5. Creates/updates the [`latest`](https://github.com/devLeonMat/cv-latex-leon-matias/releases/tag/latest) GitHub Release with the fresh PDF

---

## ✏️ Editing the CV

| Content area | File |
|---|---|
| Name, title, contact links | `resume.tex` (header block) |
| Professional summary + industries | `sections/summary.tex` |
| Technical skills | `sections/skills.tex` |
| Work experience, highlights | `sections/experience.tex` |
| Education | `sections/education.tex` |
| Certifications | `sections/certifications.tex` |
| Languages | `sections/languages.tex` |
| Layout, fonts, colors, spacing | `styles/resume.sty` |

**Workflow:**
```bash
# Edit a section, then compile and preview
make && make view
# Push to GitHub → auto-publish new PDF
git add -A && git commit -m "update: ..." && git push
```

---

## 🎨 Design system

| Property | Value |
|---|---|
| Engine | XeLaTeX |
| Font | Source Sans 3 (formerly Source Sans Pro) |
| Body size | 10 pt |
| Page | A4, 2 pages |
| Margins | top/bottom 1.6 cm · left/right 1.75 cm |
| Primary color | `#1A3A5C` Deep navy |
| Accent / rules | `#1D5B9E` Medium blue |
| Rule color | `#93C5FD` Sky blue |
| ATS-optimized | Yes — single-column, no images, no tables, no icons |

---

## 📄 License

Resume content is personal and not for redistribution.
LaTeX template code is released under MIT License.
