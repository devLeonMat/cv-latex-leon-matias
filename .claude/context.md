# Estado actual — cv-latex-leon-matias

_Actualizado: 2026-10-21_

## Trabajo activo

Variantes **extendidas** (EN + ES): el historial laboral completo, 11 roles, ene 2014 → presente.

- `resume-extended.tex` + `extended/{summary,skills,experience,education,certifications}.tex`
- `resume-extended-es.tex` + `extended-es/{summary-es,skills-es,experience-es,education-es,certifications-es}.tex`
- Solo `languages` se reutiliza (`sections/` EN, `es/` ES). Educación y certificaciones son
  propias: la extendida usa el rango **2012–2018** del grado y la lista completa de
  certificaciones (AWS SA Associate, Cibertec ×2, B.SOFT, Udemy).
- `Makefile`: targets `extended`, `extended-es`, `extended-both`, `view-extended`,
  `view-extended-es`; `all-versions` ahora son **10**.
- CI: dos pasos de compilación más, dos artifacts más, ambos PDFs en el Release `latest`.

## Decisiones de esta iteración

Fuente de contenido: el CV en Word del candidato (`~/Downloads/Roslin Leon Matias.docx`),
reconciliado contra las fechas del repo. El ADR completo está en `CLAUDE.md`. Resumen:

- **Solo se extendió hacia atrás desde jun 2022.** Los 4 roles recientes conservan las fechas
  del repo; el Word difería hasta 9 meses en ellos y se descartó para ese tramo.
- **INDRA eliminada** (pedido del candidato). Michael Page absorbe abr–jun 2020. No cuesta
  meses netos. Se pierde RIMAC como cliente y el único rol con ReactJS documentado pre-2021.
- **Olva Courier extendida a mar 2015 – jun 2018** para cerrar el vacío de 29 meses de
  2015–2017. Pasó de 10 meses a 3 a 4 m → es el segundo rol más largo del CV, con 7 bullets y
  marco de progresión para sostener la permanencia.
- **Kruger Corp añadida** como rol propio con BCP de cliente (antes el repo atribuía BCP a INDRA).
- **Resultado: cero vacíos, 12 años 10 meses continuos.** El claim de "12+ años" ahora está
  respaldado por fechas; antes el neto real era 10 a 4 m.
- Quedan 2 toques de 1 mes en bordes (sep 2019, dic 2019), aceptados como traspasos.

## Riesgos abiertos

- **3 bullets de React Native sin respaldo en el Word** (DaCodes, Globant, Bridge Social). El
  Word describe esos roles como React 18, Angular 12 y ReactJS. Se mantuvieron porque ya
  estaban en la variante react-native del repo, pero el candidato no los ha confirmado.
  Lo móvil que sí está documentado: Ionic/Angular (SURA), Kotlin (Olva), PWA (BCP).
- **LinkedIn debe alinearse** con Olva Courier mar 2015 – jun 2018.
- **Solape Globant / ExSquared** (mar–may 2023) sigue presente en las 10 variantes. Preexistente,
  fuera del alcance acordado.

## Verificación en CI (run 39670734798, 2026-10-21)

Las diez variantes compilan. Conteo real de páginas:

| PDF | Páginas |
|-----|---------|
| resume.pdf | 2 |
| resume-es.pdf | 2 |
| resume-backend-ai.pdf | 2 |
| resume-backend-ai-es.pdf | **3** ← regresión |
| resume-techlead.pdf | 2 |
| resume-techlead-es.pdf | 2 |
| resume-react-native.pdf | 2 |
| resume-react-native-es.pdf | 2 |
| **resume-extended.pdf** | **4** ← excepción deliberada |
| **resume-extended-es.pdf** | **4** ← excepción deliberada |

Las extendidas salieron en 4 páginas en ambos idiomas, como se había estimado. Inusual que el
español no se desborde a 5: el ES suele ocupar ~15% más, pero aquí los dos caen en 4.

**`resume-es.pdf` ya está en 2 páginas** — lo arregló el commit 86073c0 (quitó la sección de
idiomas).

**Regresión nueva, no introducida por el CV extendido:** `resume-backend-ai-es.pdf` pasó de 2 a
**3 páginas**. La causó el commit eb4c3ad, que añadió experiencia React Native y reescribió la
descripción de DaCodes/AgentCloud en `backend-ai-es/experience-es.tex` y `skills-es.tex`.
Necesita un pase de recorte, igual que el que se le hizo a techlead-es en septiembre.

No hay LaTeX local (`xelatex`/`latexmk` ausentes) → la verificación se hace en GitHub Actions,
o localmente con `make docker`.

## Nota de proceso

Hacer `git fetch` antes de empezar: la copia local se ha quedado atrás de `origin/main` más de
una vez.
