# cv-latex-leon-matias — Claude Context

CV profesional de **Roslin Leon Matias** en LaTeX.
Diseñado para compilar con **XeLaTeX** vía GitHub Actions (CI/CD) y publicar el PDF como Release Asset.

---

## Estructura del proyecto

```
cv-latex-leon-matias/
├── resume.tex                  # Documento raíz — header + \input de secciones
├── sections/
│   ├── summary.tex             # Resumen profesional + strip de industrias
│   ├── skills.tex              # Stack técnico (single-column, ATS-safe)
│   ├── experience.tex          # Experiencia + Additional + Career Highlights
│   ├── education.tex           # Grado universitario
│   ├── certifications.tex      # AWS cert
│   └── languages.tex           # Español / Inglés
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
| 1 | IDM Technology | Senior Backend Engineer | Scotiabank Peru / Dynamic QR Payments | Mar 2026–Presente |
| 2 | DaCodes | Lead Software Engineer | AgentCloud | Ene 2025–Feb 2026 |
| 3 | Outcoding | Senior Full Stack Engineer | SambaSafety / Qorta | Mar 2023–Dic 2024 |
| 4 | Globant | Senior Full Stack Engineer | Banco GNB Paraguay | Jun 2022–May 2023 |

### Additional Experience (condensado)

- The Bridge Social — Full Stack Engineer (Ene 2021–Ene 2022, Remote USA)
- INDRA — Full Stack Engineer (Clientes: BCP, RIMAC)
- Michael Page — Full Stack Engineer (Cliente: Intercorp)
- Zoluxiones — Full Stack Engineer (Cliente: SURA)
- Experis — Full Stack Engineer (Cliente: Equifax)
- Olva Courier — Full Stack Engineer
- LimaW — Full Stack Engineer

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

## Compilación

### GitHub Actions (automático)
- Cada push a `main` dispara el workflow `.github/workflows/build-cv.yml`
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
- [ ] Crear versión `resume-es.tex` en español si se requiere
- [ ] Crear versión `resume-targeted.tex` para postulaciones específicas
- [ ] Integrar link del PDF del Release en el portfolio web (dev-leon-matias-profile)
