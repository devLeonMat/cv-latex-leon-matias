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

## Orientación por rol (2026-10-21)

Cada variante abre con el rol al que postula, no con el stack completo:

| Variante | Título | Stack que resalta |
|----------|--------|-------------------|
| `resume-fullstack` / `-es` | Senior Full Stack Engineer | Angular · React · Java · Node.js · AWS |
| `resume-backend-ai` / `-es` | Senior Backend Engineer | Java · Node.js · **Python** · AI Agents · AWS |
| `resume-techlead` / `-es` | Tech Lead | sin cambios, ya tenía rol |
| `resume-react-native` / `-es` | Senior React Native Engineer | Mobile · React · Java · Node.js |
| `resume-extended` / `-es` | Full Stack · React Native | **retirada de la generación** (2026-10-27) |

Ya no existe un CV "general" sin rol: el antiguo `resume.tex` pasó a ser el Full Stack y el
2026-10-27 se renombró a `resume-fullstack.tex`, para que el nombre del PDF diga el rol.

En Full Stack, `Frontend` subió de la quinta línea a la segunda, con la superficie real de Angular
(6--15, micro frontends) y React 18 (Redux, Hooks, RxJS). En backend, Python tiene línea propia
acotada a lo que cubre: serverless en Lambda, procesamiento documental, tareas programadas y
tooling interno.

### Claims sin respaldo eliminados

Quedan **cero** ocurrencias de `RIMAC`, `HIPAA` y `LangChain` en los 50 archivos `.tex`:

- **HIPAA-aligned data persistence** (Logros de backend EN+ES): el CV fuente describe Oracle 19c
  y AWS en AgentCloud, sin alcance de cumplimiento.
- **RIMAC como cliente** (8 archivos): era el proyecto de INDRA, retirada del CV. Quedaba listado
  sin ningún rol en la página que lo explicara. Es un cliente real; si se quiere recuperar, lo
  correcto es devolver INDRA, no listar el cliente suelto.
- **LangChain** (skills de backend EN+ES).
- **React Native en la variante backend** (DaCodes y Globant): el aporte backend se mantiene,
  reformulado como las APIs REST que consume el cliente móvil.
- **El resumen ES de backend** describía AgentCloud como "plataforma empresarial de agentes IA
  que integra LLMs". Es un SaaS de seguros de salud, según el Word y la versión inglesa.

## Riesgos abiertos

- ~~3 bullets de React Native sin confirmar~~ → **resuelto 2026-10-21**: el candidato confirmó
  que los puede defender. El Word está incompleto en ese punto, no el CV. Se mantienen en general,
  react-native y extendida; fuera de la variante backend solo por enfoque. **No reabrir.**
- **LinkedIn debe alinearse** con la extendida. `LINKEDIN.md` ya tiene el texto de los 11 roles
  listo para pegar (paridad verificada: 69 bullets en ambos) y un checklist de 11 puntos. Incluye
  borrar **INDRA** del perfil: decisión del candidato 2026-10-22, para que LinkedIn sea espejo
  del CV extendido, que no la incluye. Pendiente de que el candidato lo aplique.
- ~~Solape Globant / ExSquared~~ → **resuelto 2026-10-21**: Globant cierra en **feb 2023** en
  las 10 variantes. El historial queda sin vacíos y sin solapes desde ene 2014 (salvo 2 toques de
  1 mes en bordes, solo visibles en las extendidas). El total sigue en 12 años 10 meses: esos
  3 meses estaban contados dos veces.

## Verificación en CI (run 39689757650, 2026-10-21)

Las diez variantes que se compilan hoy: las ocho dirigidas en 2 páginas y las dos conciliadas
(LATAM y USA) en 4. **Las dos extendidas salieron de la generación el 2026-10-27**: las
conciliadas las reemplazan.

| PDF | Páginas |
|-----|---------|
| resume-fullstack.pdf | 2 |
| resume-fullstack-es.pdf | 2 |
| resume-backend-ai.pdf | 2 |
| resume-backend-ai-es.pdf | 2 |
| resume-techlead.pdf | 2 |
| resume-techlead-es.pdf | 2 |
| resume-react-native.pdf | 2 |
| resume-react-native-es.pdf | 2 |
| resume-extended.pdf | 4 |
| resume-extended-es.pdf | 4 |

Las extendidas salieron en 4 en ambos idiomas, inusual: el ES suele ocupar ~15% más y aquí no
desbordó a 5.

El Full Stack aguantó en 2 páginas pese a expandir summary y skills, porque se fusionó
`Control de Versiones` dentro de `Prácticas` y se recortó la línea de IA a una.

`backend-ai-es` necesitó **dos** pases: reescribir summary y skills no bastó (seguía en 3): el
desborde estaba en `experience-es.tex`, que bajó de 25 a 20 bullets por fusión en IDM, ExSquared,
Globant y Logros. El español ocupa ~15% más que el inglés con el mismo contenido — misma lección
que techlead-es en septiembre.

No hay LaTeX local (`xelatex`/`latexmk` ausentes) → la verificación se hace en GitHub Actions,
o localmente con `make docker`.

## Nota de proceso

Hacer `git fetch` antes de empezar: la copia local se ha quedado atrás de `origin/main` más de
una vez.
