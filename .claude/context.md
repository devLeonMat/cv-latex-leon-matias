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

## Verificado en CI (run 35745116338, 2026-09-22)

| PDF | Páginas |
|-----|---------|
| resume.pdf | 2 |
| resume-es.pdf | **3** |
| resume-backend-ai.pdf | 2 |
| resume-backend-ai-es.pdf | 2 |
| resume-techlead.pdf | 2 |
| resume-techlead-es.pdf | 2 |

La variante ES Tech Lead necesitó un pase de recorte (el español ocupa ~15% más que el
inglés con el mismo contenido): fusión de bullets en IDM, DaCodes, Globant y Logros.

**Pendiente (preexistente, no introducido aquí):** `resume-es.pdf` sale en 3 páginas.

No hay LaTeX local (`xelatex`/`latexmk` ausentes) → la verificación se hace en GitHub
Actions, o localmente con `make docker` (imagen `texlive/texlive:latest`).

## Nota de proceso

La copia local estuvo desactualizada respecto a `origin/main` (faltaban `es/` y
`backend-ai*/`). Hacer `git fetch` antes de empezar.
