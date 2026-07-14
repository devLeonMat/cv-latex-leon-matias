# cv-latex-leon-matias — Claude Context

CV profesional de **Roslin Leon Matias** en formato LaTeX.  
Diseñado para compilar vía **GitHub Actions** (CI/CD) y publicar el PDF como Release Asset.

---

## Estructura del proyecto

```
cv-latex-leon-matias/
├── main.tex                  # Documento raíz — incluye secciones y configura el layout
├── sections/
│   ├── header.tex            # Nombre, contacto, links (LinkedIn, GitHub, email, WhatsApp)
│   ├── summary.tex           # Resumen ejecutivo (≤4 líneas)
│   ├── experience.tex        # Experiencia laboral (cronología inversa)
│   ├── skills.tex            # Stack técnico agrupado por categoría
│   ├── education.tex         # Educación y certificaciones
│   └── projects.tex          # Proyectos destacados (opcional)
├── assets/
│   └── photo.jpeg            # Foto profesional (usada en header si aplica)
├── .github/
│   └── workflows/
│       └── build-cv.yml      # CI: compila PDF con xelatex + publica release
├── .claude/
│   └── CLAUDE.md             # Este archivo
├── .gitignore
├── .editorconfig
├── Makefile                  # Build local: `make` compila, `make clean` limpia
└── README.md
```

---

## Datos del candidato (fuente de verdad)

| Campo | Valor |
|-------|-------|
| **Nombre** | Roslin Leon Matias |
| **Título** | Lead Software Engineer |
| **Email** | leonmatias1991@gmail.com |
| **WhatsApp** | +51 933 166 559 |
| **LinkedIn** | https://www.linkedin.com/in/fs-leon-matias/ |
| **GitHub** | https://github.com/devLeonMat |
| **Ubicación** | Lima, Perú (Remote) |
| **Experiencia** | 12+ años |
| **Industrias** | Healthcare · Banking · Insurance · Retail · Logistics |
| **Certificación** | AWS Certified Solutions Architect |
| **Educación** | Bachiller en Ing. de Sistemas — Universidad Nacional del Callao |

---

## Experiencia laboral

### Actual / Reciente

1. **Dacodes** — Lead Software Engineer · Ene 2025–Presente · Remote USA
2. **Outcoding** — Senior Full Stack Engineer · Mar 2023–Dic 2024 · Remote USA
3. **Globant** — Senior Full Stack Engineer · Jun 2022–May 2023 · Remote Paraguay
4. **The Bridge Social** — Full Stack Engineer · Ene 2021–Ene 2022 · Remote USA

### Anteriores (condensados)

- **INDRA** (proyectos BCP, RIMAC) — Full Stack Engineer
- **Michael Page** (proyecto Intercorp) — Full Stack Engineer
- **Zoluxiones** (proyecto SURA) — Full Stack Engineer
- **Experis** (proyecto Equifax) — Full Stack Engineer
- **Olva Courier** — Full Stack Engineer
- **LimaW** — Full Stack Engineer

---

## Stack técnico completo

| Categoría | Tecnologías |
|-----------|-------------|
| **Lenguajes** | Java, Scala, TypeScript, JavaScript, SQL |
| **Frameworks** | Spring Boot, Spring Cloud, React, Angular, NestJS, Node.js |
| **Cloud** | AWS (Lambda, S3, RDS, CloudWatch, EKS), Azure (AKS, CosmosDB) |
| **Infra** | Docker, Kubernetes, Kafka, Redis |
| **Bases de datos** | Oracle 19c, PostgreSQL, SQL Server, MongoDB, CosmosDB |
| **Testing** | JUnit, Mockito, Jest, Karma, Jasmine |

---

## Compilación

### GitHub Actions (automático)
- Cada push a `main` dispara el workflow `.github/workflows/build-cv.yml`
- Usa la imagen Docker `texlive/texlive:latest` con `xelatex`
- El PDF generado se sube como artefacto y opcionalmente como Release

### Local (requiere TeX Live / MacTeX instalado)
```bash
make          # compila con xelatex (2 pasadas para referencias)
make clean    # elimina archivos auxiliares
make view     # abre el PDF en macOS
```

---

## Instrucciones para Claude

- **Motor LaTeX**: usa `xelatex` (soporta fuentes del sistema, mejor tipografía)
- **Encoding**: UTF-8, sin caracteres especiales sin escapar
- **Fuentes**: usa `fontspec` con una fuente sans-serif profesional (e.g., Source Sans Pro, IBM Plex Sans)
- **Template base**: puede basarse en Awesome-CV, moderncv, o un template custom minimalista
- **Idioma**: el CV puede existir en versión EN y ES — agregar suffijo al filename: `main-en.tex`, `main-es.tex`
- **PDF output**: debe caber en **1 página** (adjustar font-size, spacing con cuidado)
- **No usar**: biber/biblatex (no hay bibliografía)
- **Colores**: usar una paleta profesional — considerar azul marino o indigo (consistente con portfolio web)
- **Margenes**: ajustados (0.5in top/bottom, 0.6in left/right aprox) para maximizar espacio
- **Secciones**: siempre en orden Header → Summary → Experience → Skills → Education
- **Bullet points en Experience**: máximo 3-4 por empresa, orientados a impacto y métricas

---

## Convenciones de nombres de archivo

- `main.tex` — versión principal (inglés, una página)
- `main-es.tex` — versión en español (si se crea)
- `main-two-page.tex` — versión extendida de dos páginas (si se crea)

---

## Pendientes / roadmap

- [ ] Definir template visual final (Awesome-CV vs custom)
- [ ] Agregar foto en header (opcional, depende del mercado destino)
- [ ] Versión ES del CV
- [ ] Script para generar versión targeted por empresa/rol
- [ ] Integrar con el portfolio web (link directo al PDF del Release)
