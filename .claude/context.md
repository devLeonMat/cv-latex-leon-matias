# Estado actual — cv-latex-leon-matias

_Actualizado: 2026-09-22_

## Trabajo activo

Variantes **Tech Lead** (EN + ES), añadidas siguiendo la convención ya existente en el repo:

- `resume-techlead.tex` + `techlead/{summary,skills,experience}.tex`
- `resume-techlead-es.tex` + `techlead-es/{summary-es,skills-es,experience-es}.tex`
- Página 2 reutilizada: `sections/` (EN) y `es/` (ES) — no se duplican educación,
  certificaciones ni idiomas.
- `Makefile`: targets `techlead`, `techlead-es`, `techlead-both`; `all-versions` ahora son 6.
- CI: dos pasos de compilación más, dos artifacts más, ambos PDFs en el Release `latest`,
  y un paso que imprime el número de páginas de cada PDF.

## Decisiones

- **IDM Technology / Scotiabank = "Tech Lead" solo en las variantes Tech Lead**
  (pedido del candidato, 2026-09-22). El resto de variantes mantiene
  "Senior Fullstack Developer" / "Desarrollador Fullstack Senior".
- `styles/resume.sty` no se modificó: las variantes ES no usan babel (misma decisión que
  `resume-es.tex`), por lo que la etiqueta fija del estilo sigue siendo "Project:".
- Contenido sincronizado con el estado vigente de `main`: DaCodes = SaaS para aseguradora
  de salud en EE.UU., IDM incluye tooling interno (React/Electron/Node/Python) y desarrollo
  asistido por IA, certificación AWS removida del CV.

## Pendiente de verificar

- Conteo de páginas de `resume-techlead.pdf` y `resume-techlead-es.pdf` (objetivo: 2 A4).
  No hay LaTeX local (`xelatex`/`latexmk` ausentes) → se verifica en GitHub Actions,
  o localmente con `make docker` adaptado (imagen `texlive/texlive:latest`).

## Nota de proceso

La copia local estuvo desactualizada respecto a `origin/main` (faltaban `es/` y
`backend-ai*/`). Hacer `git fetch` antes de empezar.
