# cv-latex-leon-matias — Claude Context

CV profesional de **Roslin Leon Matias** en LaTeX.
Diseñado para compilar con **XeLaTeX** vía GitHub Actions (CI/CD) y publicar el PDF como Release Asset.

---

## Estructura del proyecto

```
cv-latex-leon-matias/
├── resume.tex                  # CV general (EN) — header + \input de secciones
├── resume-es.tex               # CV general (ES)
├── resume-backend-ai.tex       # CV dirigido: Backend + AI Agents (EN)
├── resume-backend-ai-es.tex    # CV dirigido: Backend + Agentes IA (ES)
├── resume-techlead.tex         # CV dirigido: Tech Lead (EN)
├── resume-techlead-es.tex      # CV dirigido: Tech Lead (ES)
├── resume-react-native.tex     # CV dirigido: React Native + Full Stack (EN)
├── resume-react-native-es.tex  # CV dirigido: React Native + Full Stack (ES)
├── resume-extended.tex         # CV extendido: historial completo, 11 roles (EN)
├── resume-extended-es.tex      # CV extendido: historial completo, 11 roles (ES)
├── sections/                   # Secciones del CV general (EN)
│   ├── summary.tex             # Resumen profesional + strip de industrias
│   ├── skills.tex              # Stack técnico (single-column, ATS-safe)
│   ├── experience.tex          # Experiencia + Additional + Career Highlights
│   ├── education.tex           # Grado universitario
│   ├── certifications.tex      # Certificaciones (sin AWS: removida para caber en 2 págs)
│   └── languages.tex           # Español / Inglés
├── es/                         # Secciones del CV general (ES) — sufijo -es
├── backend-ai/                 # Secciones Backend+IA (EN): summary, skills, experience
├── backend-ai-es/              # Secciones Backend+IA (ES)
├── techlead/                   # Secciones Tech Lead (EN): summary, skills, experience
├── techlead-es/                # Secciones Tech Lead (ES)
├── react-native/               # Secciones React Native (EN)
├── react-native-es/            # Secciones React Native (ES)
├── extended/                   # Secciones CV extendido (EN) + education y certifications propias
├── extended-es/                # Secciones CV extendido (ES)
├── styles/
│   └── resume.sty              # TODA la configuración: geometry, fuentes, colores, comandos
├── assets/                     # Foto profesional (no usada en versión ATS)
├── .github/workflows/
│   └── build-cv.yml            # CI: compila PDF + publica Release
├── .latexmkrc                  # Configura latexmk para usar XeLaTeX
├── Makefile                    # Targets: make · make view · make clean
└── README.md
```

---

## Candidato (fuente de verdad)

| Campo | Valor |
|-------|-------|
| **Nombre en CV** | LEON MATIAS ROSLIN |
| **Título** | Lead Software Engineer \| Cloud Native Applications \| Java \| AWS \| React |
| **Email** | leonmatias1991@gmail.com |
| **WhatsApp** | +51 933 166 559 |
| **LinkedIn** | https://www.linkedin.com/in/fs-leon-matias/ |
| **GitHub** | https://github.com/devLeonMat |
| **Ubicación** | Lima, Peru (Open to Remote) |
| **Experiencia** | 12+ años |
| **Industrias** | Healthcare · Banking · Insurance · Financial Services · Retail · Logistics |
| **Certificación** | AWS Certified Solutions Architect – Associate |
| **Educación** | B.S. Systems Engineering — Universidad Nacional del Callao |

---

## Experiencia laboral

### Roles principales

| # | Empresa | Rol | Cliente/Proyecto | Período |
|---|---------|-----|-----------------|---------|
| 1 | IDM Technology | Senior Fullstack Developer | Scotiabank Peru / Dynamic QR Payments | Mar 2026–Presente |
| 2 | DaCodes | Lead Software Engineer | HealthCare / AgentCloud | Ene 2025–Feb 2026 |
| 3 | ExSquared (antes Outcoding) | Senior Full Stack Engineer | SambaSafety / Qorta | Mar 2023–Dic 2024 |
| 4 | Globant | Senior Full Stack Engineer | Banco GNB Paraguay | Jun 2022–**Feb 2023** |

### Roles anteriores (fechas verificadas 2026-10-21)

Fuente: CV en Word del candidato. Expandidos con bullets completos solo en las variantes
**extendidas**; las demás variantes los condensan con `\cvMiniEntry` (sin fechas).

| Empresa | Rol | Cliente / Proyecto | Período |
|---------|-----|--------------------|---------|
| The Bridge Social | Full Stack Engineer | National Commercial Bank / Lynk — Remoto, **Jamaica** | Ene 2021–May 2022 |
| Kruger Corp | Senior Full Stack Engineer | **BCP** / Tío Grou | Jul 2020–Dic 2020 |
| Michael Page | Full Stack Engineer | Intercorp Retail / Tracking de incidentes | Dic 2019–Jun 2020 |
| Zoluxiones | Full Stack Engineer | SURA Perú / Contrato Digital | Sep 2019–Dic 2019 |
| Experis / Manpower | Senior Java Engineer | Equifax / KATRINA | Jul 2018–Sep 2019 |
| Olva Courier | Java Developer | ERP Olva Corp | Mar 2015–Jun 2018 |
| LimaW | Java Developer | Biometría Zircon | Ene 2014–Feb 2015 |

**Correcciones sobre lo que decía este documento antes:**
- **BCP fue cliente de Kruger Corp, no de INDRA.** INDRA (cliente RIMAC, proyecto Póliza
  Electrónica, abr–ago 2020) se retiró del CV por decisión del candidato; Michael Page cubre
  ese período.
- The Bridge Social es **Jamaica**, no "Remote USA", y terminó en **may 2022**, no ene 2022.
- Olva Courier abarca **mar 2015 – jun 2018**, no solo 2017–2018.

**Experiencia total: 12 años 10 meses, cadena continua desde ene 2014, sin vacíos.**

---

## Stack técnico completo

| Categoría | Tecnologías |
|-----------|-------------|
| **Lenguajes** | Java, Scala, TypeScript, JavaScript, SQL |
| **Backend** | Spring Boot, Spring Boot 4, Spring WebFlux, Spring Cloud, Spring Security, REST APIs, Reactive Programming, Hexagonal Architecture, Microservices |
| **Frontend** | React, Angular, Node.js, NestJS |
| **Cloud** | AWS (Lambda, S3, RDS, EKS, CloudWatch, SQS), Azure (AKS, CosmosDB), GCP, Apigee |
| **Infra** | Docker, Kubernetes, Kafka, Redis, Jenkins, SonarCloud |
| **Bases de datos** | Oracle 19c, SQL Server, PostgreSQL, MongoDB, CosmosDB, MySQL |
| **Herramientas** | Bitbucket, Git, Jira, Confluence, Swagger/OpenAPI |
| **Testing** | JUnit, Mockito, Jest, Karma, Jasmine, Pentesting |
| **Prácticas** | Event-Driven Architecture, CI/CD, API Design, Agile/Scrum, Secure Dev, Legacy Modernization |

---

## Sistema de diseño (styles/resume.sty)

| Propiedad | Valor |
|-----------|-------|
| Motor | XeLaTeX |
| Fuente | Source Sans 3 (via fontspec, paquete tlmgr: `sourcesanspro`) |
| Tamaño cuerpo | 10pt |
| Página | A4, 2 páginas máximo |
| Márgenes | top/bottom 1.6cm · left/right 1.75cm |
| Color nombre | `#0D1B2A` (deep navy) |
| Color títulos/secciones | `#1A3A5C` (dark navy) |
| Color acento/links | `#1D5B9E` (medium blue) |
| Color texto | `#2D3748` (dark charcoal) |
| Color fechas | `#64748B` (slate gray) |
| Color reglas | `#93C5FD` (sky blue) |
| ATS-optimized | Sí — columna única, sin imágenes, sin tablas, sin iconos |

---

## Comandos de resume.sty (referencia rápida)

```latex
% Header
\cvName{LEON MATIAS ROSLIN}
\cvHeadTitle{Lead Software Engineer | ...}
\cvContact{Lima, Peru \cvSep +51 933 166 559 \cvSep \href{...}{...}}

% Experience entries
\cvEntry{Rol}{Empresa — Ubicación}{Fecha inicio -- Fecha fin}
\cvEntryClient{Rol}{Empresa}{Cliente}{Proyecto}{Fecha}

% Bullets dentro de entrada de experiencia
\begin{cvItems}
  \cvItem{Texto del logro...}
\end{cvItems}

% Skills (single-column, ATS-safe)
\skillLine{Categoría}{Tech A, Tech B, Tech C}

% Education / Certifications
\cvEduEntry{Título/Cert}{Institución}{Año}

% Additional experience (condensado)
\cvMiniEntry{Rol}{Empresa | Cliente}{Fechas}
```

---

## Variantes de CV

| Documento | Rol destino | Idioma | Secciones propias | Página 2 reutilizada |
|-----------|-------------|--------|-------------------|----------------------|
| `resume.tex` | **Senior Full Stack Engineer** · Angular · React · Java · Node.js | EN | `sections/` | — |
| `resume-es.tex` | **Ingeniero Full Stack Senior** · Angular · React · Java · Node.js | ES | `es/` | — |
| `resume-backend-ai.tex` | Senior Backend Engineer · Java · Node.js · **Python** · AI Agents | EN | `backend-ai/` | `sections/` |
| `resume-backend-ai-es.tex` | Ingeniero Backend Senior · Java · Node.js · **Python** · Agentes IA | ES | `backend-ai-es/` | `es/` |
| `resume-techlead.tex` | **Tech Lead** | EN | `techlead/` | `sections/` |
| `resume-techlead-es.tex` | **Tech Lead** | ES | `techlead-es/` | `es/` |
| `resume-react-native.tex` | **Senior React Native Engineer** · Mobile | EN | `react-native/` | `sections/` |
| `resume-react-native-es.tex` | **Ingeniero React Native Senior** · Móvil | ES | `react-native-es/` | `es/` |
| `resume-extended.tex` | **Extendido** — historial completo (11 roles) | EN | `extended/` | `sections/languages` |
| `resume-extended-es.tex` | **Extendido** — historial completo (11 roles) | ES | `extended-es/` | `es/languages-es` |

Convención de variante dirigida: un `.tex` raíz + un directorio propio con
`summary`, `skills` y `experience`; educación, certificaciones e idiomas se reutilizan
de `sections/` (EN) o `es/` (ES). Todas comparten `styles/resume.sty`.

**Variantes Tech Lead** (2026-09-22): mismos hechos, reformulados hacia liderazgo técnico
(propiedad de arquitectura, estándares, code review, mentoría, stakeholders). La posición
actual en IDM / Scotiabank figura como **Tech Lead**; en el resto de variantes sigue como
Senior Fullstack Developer (decisión explícita del candidato).

---

## ADR — Orientación por rol (2026-10-21)

**Cada variante abre con el rol al que postula**, no con el stack completo. Ya no existe un CV
"general" sin rol: `resume.tex` / `resume-es.tex` pasaron a ser la variante **Full Stack**
(Angular, React, Java, Node.js). En la variante backend, **Python** entra al título con una línea
propia en skills, acotada a lo que realmente cubre (serverless en Lambda, procesamiento
documental, tareas programadas, tooling interno); el ángulo de agentes IA baja del slot de
"Cloud Native" pero se mantiene. La variante React Native se titula como rol React Native en
lugar de full stack genérico. Tech Lead y las extendidas no se tocaron.

`sections/{summary,skills,experience}.tex` y `es/*` los usa **solo** el CV general — editarlos
no afecta a las otras variantes, que tienen sus propios directorios.

**Claims sin respaldo eliminados** (quedan cero ocurrencias en los 50 `.tex`): `HIPAA`,
`LangChain`, `RIMAC` y los bullets de React Native dentro de la variante backend.

**React Native: confirmado, no cuestionar** (2026-10-21). El candidato confirmó explícitamente
que puede defender los bullets de React Native en **DaCodes**, **Globant** y **The Bridge
Social**. El CV en Word está **incompleto** en ese punto: describe esos roles como React 18,
Angular 12 y ReactJS, pero la experiencia React Native es real. Los bullets se mantienen en las
variantes **react-native** y **extendida**, que son las que lo usan. Están fuera de la variante
**backend** (no por veracidad: el trabajo de UI móvil está fuera del enfoque de ese CV) y también
fuera de las variantes **general/Full Stack** y **Tech Lead**, que nunca los tuvieron.
No reabrir este tema ni "corregirlo" contra el Word. El resumen ES
de backend describía AgentCloud como plataforma de agentes IA con LLMs; es un SaaS de seguros de
salud. RIMAC era el proyecto de INDRA, retirada del CV: para recuperarlo hay que devolver INDRA,
no listar el cliente suelto.

**Páginas**: el español ocupa ~15% más que el inglés con el mismo contenido. `backend-ai-es`
necesitó bajar de 25 a 20 bullets para volver a 2 páginas tras la regresión de `eb4c3ad`.
Verificado en el run 39689757650: las ocho dirigidas en 2 páginas, las dos extendidas en 4.

---

## ADR — CV extendido (2026-10-21)

La variante **extendida** (`resume-extended*.tex`) expande la sección *Additional Experience*
a 11 roles con fechas, cliente, proyecto y bullets completos. Fuente: el CV en Word del
candidato (`Roslin Leon Matias.docx`), reconciliado contra las fechas del repo.

**Reglas de la reconciliación de fechas** (decisión explícita del candidato):

- Los roles **desde jun 2022 en adelante** (IDM, DaCodes, ExSquared, Globant) conservan las
  fechas del repo. El Word difería hasta 9 meses en esos cuatro; el repo manda.
- Los roles **anteriores a jun 2022** vienen del Word, con estos ajustes:
  - **The Bridge Social**: Word 01/2021–10/2022 → **ene 2021 – may 2022**. Oct 2022 solapaba
    5 meses con Globant.
  - **INDRA** (RIMAC / Póliza Electrónica): **eliminada**. Michael Page absorbe abr–jun 2020.
  - **Michael Page**: Word 12/2019–04/2020 → **dic 2019 – jun 2020**.
  - **Olva Courier**: Word 08/2017–05/2018 → **mar 2015 – jun 2018**. Elimina el vacío de
    29 meses (2015–2017) que coincidía con la carrera en UNAC.
  - **Globant**: cierra en **feb 2023**, no may 2023, para no pisar a ExSquared (2026-10-21).
- **Kruger Corp** entra como rol propio con **BCP** de cliente. Antes el repo atribuía BCP a
  INDRA, lo cual era incorrecto: BCP fue Kruger (Tío Grou), RIMAC fue INDRA.
- **The Bridge Social = Jamaica** (cliente National Commercial Bank, proyecto Lynk), no
  "Remote, USA" como decía el repo.
- Resultado: **cadena continua ene 2014 → presente, cero vacíos, 12 años 10 meses**. Quedan
  2 toques de 1 mes en bordes (sep 2019, dic 2019), considerados traspasos normales.

**Excepción de páginas**: esta variante rompe a propósito la regla de 2 páginas A4 —
son ~4 páginas. Es el objetivo de una versión extendida.

**Educación y certificaciones propias**: `extended/education.tex` usa **2012–2018** (del Word)
en lugar del `2014` de `sections/education.tex`, y `extended/certifications.tex` incluye AWS SA
Associate (BSG 2020), Angular y Java Advanced (Cibertec 2019), B.SOFT y la lista de Udemy.

**Solape Globant / ExSquared: resuelto** (2026-10-21). Globant cerraba en may 2023 y pisaba
3 meses a ExSquared (mar 2023 – dic 2024). Ahora cierra en **feb 2023** en las diez variantes,
por decisión del candidato. El total no baja: esos 3 meses estaban contados dos veces, no eran
cobertura extra.

**Resultado del historial: cero vacíos y cero solapes desde ene 2014**, salvo dos toques de
1 mes en bordes (sep 2019, dic 2019) que solo aparecen en las variantes extendidas y se
consideran traspasos normales. Experiencia total: **12 años 10 meses**.

---

## Compilación

### GitHub Actions (automático)
- Cada push a `main` dispara el workflow `.github/workflows/build-cv.yml`
- Compila las **diez** variantes, imprime el número de páginas de cada PDF y las publica
  en el Release `latest`
- Usa XeLaTeX con la imagen oficial de TeX Live
- Instala `sourcesanspro` automáticamente
- PDF publicado en Releases como `latest`

### Local
```bash
make            # usa latexmk (configurado en .latexmkrc para XeLaTeX)
make clean      # elimina archivos auxiliares
make view       # abre PDF en macOS (Preview)
```

### Overleaf
1. Subir como ZIP
2. Menu → Settings → Compiler = XeLaTeX
3. Recompile

---

## Instrucciones para Claude

- **Motor**: siempre XeLaTeX (no pdflatex, no lualatex)
- **Estilos**: todos los cambios visuales van en `styles/resume.sty`
- **Contenido**: cada sección en su archivo correspondiente en `sections/`
- **ATS**: no agregar tablas complejas, columnas múltiples, cajas decorativas ni iconos incrustados en el cuerpo del CV. Excepción: iconos fontawesome5 (`\faEnvelope`, `\faLinkedin`, `\faGithub`, `\faWhatsapp`) permitidos solo en la línea de contacto del header (decisión explícita del candidato, 2026-07-14)
- **Fuente**: Source Sans 3 via fontspec — no cambiar sin actualizar el README
- **Páginas**: máximo 2 páginas A4 — verificar que el contenido no desborde
- **Separador de contacto**: `\cvSep` (barra vertical con espacio)
- **Bullets**: usar `\begin{cvItems}` con `\cvItem{...}`, NO usar `itemize` directamente
- **Colores**: usar las variables definidas en resume.sty (cvName, cvTitle, cvAccent, cvText, cvMuted, cvRule)

---

## Pendientes

- [ ] Verificar y completar bullets de DaCodes, Outcoding, Globant con el contenido exacto del CV actual
- [ ] Probar en Overleaf y verificar layout de 2 páginas
- [x] Versión en español (`resume-es.tex`) — hecha
- [x] Versiones Tech Lead EN/ES (`resume-techlead*.tex`) — hechas 2026-09-22
- [x] Versiones React Native EN/ES (`resume-react-native*.tex`) — hechas
- [x] Versiones extendidas EN/ES (`resume-extended*.tex`) — hechas 2026-10-21
- [ ] Crear versión `resume-targeted.tex` para postulaciones específicas
- [x] Bullets de **React Native** (DaCodes, Globant, Bridge Social) — **confirmados por el
      candidato 2026-10-21**. Ver nota abajo: NO volver a cuestionarlos
- [ ] Alinear LinkedIn con las fechas de Olva Courier (mar 2015 – jun 2018)
- [x] Solape Globant / ExSquared resuelto — Globant cierra en feb 2023 (2026-10-21)
- [ ] Integrar link del PDF del Release en el portfolio web (dev-leon-matias-profile)
