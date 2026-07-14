# cv-latex-leon-matias

Professional CV of **Roslin Leon Matias** — Lead Software Engineer, built with LaTeX.

[![Build CV PDF](https://github.com/devLeonMat/cv-latex-leon-matias/actions/workflows/build-cv.yml/badge.svg)](https://github.com/devLeonMat/cv-latex-leon-matias/actions/workflows/build-cv.yml)

---

## ⬇️ Download Latest PDF

The CV is automatically compiled on every push to `main`.  
**[Download latest PDF →](https://github.com/devLeonMat/cv-latex-leon-matias/releases/tag/latest)**

---

## 🗂️ Project structure

```
cv-latex-leon-matias/
├── main.tex              # Root document — layout, design, section imports
├── sections/
│   ├── header.tex        # Name, title, contact info
│   ├── summary.tex       # Executive summary
│   ├── experience.tex    # Work history (reverse chronological)
│   ├── skills.tex        # Technical stack
│   └── education.tex     # Degree + certifications
├── assets/
│   └── photo.jpeg        # Professional photo
├── .github/workflows/
│   └── build-cv.yml      # GitHub Actions: compile PDF → publish Release
├── Makefile              # Local build helper
└── .claude/CLAUDE.md     # AI assistant context (Claude)
```

---

## 🔧 Local compilation

**Requires:** MacTeX or TeX Live with `xelatex`.

```bash
# Install MacTeX on macOS (via Homebrew)
make install-mac

# After install, restart terminal, then:
make        # compiles main.pdf
make view   # opens PDF in Preview
make clean  # removes auxiliary files
```

---

## ☁️ CI/CD (GitHub Actions)

Every push to `main` triggers `.github/workflows/build-cv.yml`:
1. Checks out the repo
2. Compiles `main.tex` with `xelatex` inside the official TeX Live Docker image
3. Uploads the resulting `main.pdf` as a workflow artifact
4. Creates/updates the `latest` GitHub Release with the fresh PDF

---

## ✏️ Editing the CV

| Section | File |
|---------|------|
| Contact & name | `sections/header.tex` |
| Summary paragraph | `sections/summary.tex` |
| Work experience | `sections/experience.tex` |
| Technical skills | `sections/skills.tex` |
| Education & certs | `sections/education.tex` |

Commit and push — GitHub Actions will recompile and publish automatically.

---

## 📄 License

Content is personal and not for redistribution. Template code is MIT.
