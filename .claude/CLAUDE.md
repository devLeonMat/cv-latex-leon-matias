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
├── resume-latam-es.tex         # CV LATAM: historial conciliado contra el CUL (ES)
├── resume-usa.tex              # CV USA: conciliado + Apple Inc. (EN)
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
├── latam-es/                   # Secciones CV LATAM conciliado (ES)
├── usa/                        # Secciones CV USA conciliado + Apple (EN)
├── styles/
│   └── resume.sty              # TODA la configuración: geometry, fuentes, colores, comandos
├── assets/                     # Foto profesional (no usada en versión ATS)
├── .github/workflows/
│   └── build-cv.yml            # CI: compila PDF + publica Release
├── .latexmkrc                  # Configura latexmk para usar XeLaTeX
├── Makefile                    # Targets: make · make view · make clean
├── LINKEDIN.md                 # Espejo del CV extendido, listo para pegar en LinkedIn
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
| `resume-latam-es.tex` | **LATAM** — historial conciliado contra el CUL (13 roles) | ES | `latam-es/` | `extended-es/{education,certifications}-es` + `es/languages-es` |
| `resume-usa.tex` | **USA** — conciliado + **Apple Inc.** (14 roles) | EN | `usa/` | `extended/{education,certifications}` + `sections/languages` |

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
  - **IDM / Scotiabank**: el header ya **no** lleva la etiqueta "6-month contract" / "Contrato
    6 meses" (2026-10-21). Empezó en mar 2026 y sigue activo: a los 8 meses la etiqueta se
    contradecía a sí misma. Las diez variantes muestran solo `March 2026 -- Present`.
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

**LinkedIn = espejo del CV extendido** (2026-10-22). Decisión del candidato: el perfil debe
parecerse lo más posible a `resume-extended.tex`. `LINKEDIN.md` reproduce sus 11 roles con los
mismos bullets, fechas y orden — paridad verificada en 69 bullets. De ahí se desprende que
**INDRA se elimina de LinkedIn**, no que vuelva al CV: la extendida no la incluye. Al borrarla,
RIMAC deja de figurar también en el perfil. Para recuperar RIMAC habría que devolver INDRA al CV
**y** a LinkedIn a la vez; nunca listar el cliente suelto en uno de los dos.

Si la extendida cambia, `LINKEDIN.md` se regenera desde ella.

**Solape Globant / ExSquared: resuelto** (2026-10-21). Globant cerraba en may 2023 y pisaba
3 meses a ExSquared (mar 2023 – dic 2024). Ahora cierra en **feb 2023** en las diez variantes,
por decisión del candidato. El total no baja: esos 3 meses estaban contados dos veces, no eran
cobertura extra.

**Resultado del historial: cero vacíos y cero solapes desde ene 2014**, salvo dos toques de
1 mes en bordes (sep 2019, dic 2019) que solo aparecen en las variantes extendidas y se
consideran traspasos normales. Experiencia total: **12 años 10 meses**.

---

---

## ADR — CV LATAM y USA conciliados contra el CUL (2026-10-26)

`resume-latam-es.tex` + `latam-es/` y `resume-usa.tex` + `usa/` son las primeras variantes cuyas fechas **no** vienen del CV en Word ni
de decisiones del repo, sino del **Certificado Único Laboral** emitido por el MTPE el 2026-10-26
(23 registros de planilla, T-Registro + PLAME, data desde ago 2012).

**Regla de conciliación** (decisión del candidato): cuando dos contratos se solapan, **gana el más
extenso**; el más corto se recorta al espacio libre y se descarta si queda por debajo de 25 días.
Resultado: cero solapes por construcción.

**Clientes confirmados por el candidato** (2026-10-26), que el CUL no trae:

| Empleador en planilla | Cliente |
|-----------------------|---------|
| Quality & Development Software | Clínicas AUNA |
| Caleidos Media | Apple Inc. |
| Tata Consultancy | SUNAT |
| Neoris Perú | Cencosud |
| NTT Data Perú | Telefónica Perú (como **arquitecto**) |
| Q System | Inkafarma |
| Indra Perú | RIMAC |
| PSS Perú | BanBif |
| Alternativa Tecnológica | BCP (soporte) |

**Indra entra, Kruger sale.** Indra / RIMAC son 9 meses (abr–dic 2020); Kruger / BCP · Tío Grou son
4 m 23 d y caen enteros dentro de Indra. La regla deja a Indra. Esto **invierte** la decisión previa
del repo, donde Kruger estaba y a Indra se la había retirado. Decisión explícita del candidato.
Afecta solo a `latam/`: las diez variantes anteriores quedan intactas.

**Claims retirados de `latam/skills.tex`** por perder su único respaldo al salir Kruger:
`PWA` / `Progressive Web Apps`, `WhatsApp Business API`, `Retrofit`, `Angular 10`. Angular 6, 8, 12
y 15 sobreviven en otros roles. También se retiraron **MongoDB** y **CosmosDB**, que no tienen
respaldo en ningún rol de ninguna variante.

**Redis se queda.** `extended/` lo atribuye a Kruger, pero las ocho condensadas lo atribuyen a
ExSquared / Qorta junto con Kafka. `latam/experience.tex` sigue a las ocho: Redis va en el bloque de
ExSquared. Esa discrepancia entre documentos ya existía y sigue pendiente en `extended/`.

**Fechas corregidas contra el CUL:**

| Rol | Decía el repo | Dice el CUL |
|-----|---------------|-------------|
| Olva Courier | mar 2015 – jun 2018 | **ago 2017 – may 2018** (9 m 8 d) |
| LimaW / WProducciones | ene 2014 – feb 2015 | **may 2014 – feb 2015** (10 m, fusionadas) |
| Experis / Equifax | jul 2018 – sep 2019 | **jul 2018 – abr 2019** (8 m 21 d) |
| Michael Page | dic 2019 – jun 2020 | **ene 2020 – mar 2020** (recortado; Zoluxiones ocupa dic 2019) |
| Globant | jun 2022 – feb 2023 | 22/06/2022 – 19/06/2023, recortado a **feb 2023** por ExSquared |

El caso de Globant confirma que la fecha que ya tenía el repo era la correcta: la regla la reproduce
sola. El bullet de Olva que decía *"over a three-year tenure"* se reescribió: con 9 meses era falso.

**El summary ya no dice "continuous".** La cadena continua desde ene 2014 que afirmaban los ADR
anteriores **no se sostiene**: el CUL muestra 5 a 7 m sin registro dentro de la ventana, de los
cuales solo 2 a 5 m se explican por empleadores extranjeros. El hueco mayor es **mar 2015 – nov
2016 (1 a 9 m)**, que coincide con la carrera en la UNAC. `latam/summary.tex` dice "since 2014".

**Nueve registros descartados por la regla:** Kruger/BCP, NTT Data/Telefónica, Tata/SUNAT,
Caleidos/Apple, Quality & Development/AUNA, Neoris/Cencosud, Q System/Inkafarma, AVLA y el 2º
contrato de Manpower.

**Descartado por el candidato** (2026-10-26): **Alternativa Tecnológica / BCP** (dic 2016 – mar
2017). Al salir, y con Kruger ya fuera, **BCP deja de figurar en este variante**: se retiró también
de la lista de clientes del summary.

**Fusionadas** (2026-10-26): **WProducciones es LimaW** — la misma empresa con dos registros de
planilla (WProducciones 01/05/2014 – 31/01/2015 y LimaW 01/02/2015 – 28/02/2015). Entran como una
sola entrada de **10 meses**, con los dos nombres en el encabezado para que calce línea a línea con
el certificado. Esto resuelve el problema de que LimaW tenía 5 bullets para 28 días.

**Freelance Web Developer, mar 2015 – jul 2017 (2 a 5 m).** Cubre la ventana entre LimaW y Olva,
incluida la franja donde estaba Alternativa. **No puede aparecer en el CUL y eso no es una omisión**:
las consideraciones del propio certificado establecen que no se presentan los casos de trabajadores
que generan ingresos de **cuarta – quinta categoría**, que es exactamente la figura del trabajo
independiente. El certificado calla ahí por diseño, no por vacío.

Con esto el historial arranca en **may 2014**, no en ene 2014, y cubre **12 a 5 m** hasta oct 2026.
Quedan solo traspasos de uno o dos meses entre contratos.

**Contenido aportado por el candidato** (2026-10-26):

- **Indra / RIMAC** — desarrollo de nuevos productos, entre ellos Póliza Electrónica. Capa de datos
  completa en **Oracle / PL/SQL** (procedures, packages, vistas, modelo), servicios **serverless** en
  **AWS Lambda** con **Node.js**, **S3** para documentos, y front end en **React**. Rol puesto como
  Senior Full Stack Engineer; el título exacto sigue sin confirmar.
- **PSS Perú / BanBif** — nuevos productos de ahorro: **Ahorro Programado** y **Ahorro Automático**.
  **Java** con **Spring Boot**, servicios **REST** y **SOAP**, módulos legados en **JSP / JSTL**, y
  front end en **Angular** con **Angular Material**. La versión de Java no está fijada: el candidato
  recuerda una LTS vigente en 2019 (eran Java 8 y Java 11) pero no cuál.

**Claims agregados a `latam/skills.tex`** con ese contenido: **PL/SQL** (Indra), **JSP / JSTL**
(PSS y LimaW) y **PrimeFaces** (Olva — ya estaba en los bullets pero nunca se listó en skills).

**Pendiente de contenido** — un solo bloque, marcado con `TODO` en `latam/experience.tex`:

- **Freelance Web Developer (mar 2015 – jul 2017)** — tiene un bullet genérico. Es el tramo más
  largo de la carrera temprana, 2 a 5 m, y un revisor va a preguntar. Falta tipo y cantidad de
  clientes, stack concreto y algún proyecto nombrable.

Por el ADR de LinkedIn, al entrar Indra al CV debe entrar también a `LINKEDIN.md`, y RIMAC con ella.

### Separación por idioma y mercado (2026-10-26)

Decisión del candidato: **LATAM va en español, USA va en inglés**, y Apple entra solo en la de USA.

| | Idioma | Roles | Apple |
|---|--------|-------|-------|
| `resume-latam-es.tex` | español | 13 | no |
| `resume-usa.tex` | inglés | 14 | **sí** |

Los dos comparten la misma conciliación; `latam-es/` es espejo de `usa/` menos Apple. Las
traducciones de los diez roles que ya existían se tomaron de `extended-es/experience-es.tex` para no
retraducir y mantener la voz del repo; solo Indra, PSS y el bloque freelance se escribieron nuevos
en español.

**Apple rompe la propiedad de cero solapes, a propósito.** El CUL registra Caleidos Media
17/10/2022 – 31/03/2023 **en paralelo** con Globant Perú 22/06/2022 – 19/06/2023. Los dos son reales
y los dos están documentados, así que `usa/experience.tex` conserva las fechas del certificado en
lugar de recortar una para fingir una secuencia limpia. Es el único solape del CV.
Alternativa si se quiere estrictamente secuencial: cerrar Globant en oct 2022 (4 m en vez de 8 m 7 d)
y correr Apple hasta feb 2023.

**Contenido de Apple aportado por el candidato** (2026-10-26): división **iTunes**; reemplazo del
sistema legado de registro de contenido musical; digitalización del registro de **códigos únicos**
de canciones, álbumes y playlists; backend **Java con Spring WebFlux**; frontend **React** sobre las
librerías de diseño internas de Apple; **JUnit** y **Jest** para pruebas unitarias; coverage con
SonarQube.

Interpretaciones y decisiones mías sobre ese contenido, anotadas también en `usa/experience.tex`:

- **«Sonnet» = SonarQube.** No existe herramienta de coverage con ese nombre y SonarQube ya figura en
  seis roles del CV.
- **Java 17, no 19.** En oct 2022 – mar 2023 la versión más nueva era Java 19, pero era un release de
  seis meses sin soporte extendido; la LTS vigente y la que corre en producción era la 17. El
  candidato pidió «la más actualizada»; 17 es la defendible. **Cerrado el 2026-10-26**: el
  candidato ratificó la 17. No reabrir el tema contra el pedido original de «la más nueva».
- **React 18** — versión vigente en esa ventana (salió en marzo de 2022).
- **Spring Boot sin número de versión.** El encargo arrancó cuando regía 2.7 y Spring Boot 3 salió en
  noviembre de 2022, a mitad del proyecto. Afirmar una de las dos sería inventar.
- **AWS — corregido el 2026-10-26.** Primero omití el cloud razonando que Apple corre
  infraestructura propia. La premisa estaba mal: Apple es uno de los clientes más grandes de AWS y
  eso es público. El candidato confirmó que el proyecto trabajaba sobre el stack de AWS, así que
  entra en la entrada y en el stack. **Servicios concretos aportados el 2026-10-26**: **RDS, EKS,
  API Gateway, CloudWatch y Secrets Manager**. Entran nombrados uno por uno, porque «AWS» a secas
  aporta poco en un filtro ATS. **S3, SQS y Lambda quedan fuera** de esta entrada: son los
  sospechosos de siempre en un stack así, pero el candidato no los nombró. En `usa/skills.tex` se
  agregaron **API Gateway** y **Secrets Manager**, que antes no figuraban; su único respaldo es
  Apple, así que **no van a `latam-es/`**, donde Apple no existe.
- **PostgreSQL — inferido y aceptado**, con un refuerzo posterior (2026-10-26). El candidato
  recuerda **RDS** entre los servicios, que es el servicio relacional gestionado de AWS: la
  memoria del servicio concuerda con la del tipo de motor, aunque no es un recuerdo del motor en
  sí. La entrada dice ahora «PostgreSQL on RDS». El candidato solo recordaba que era
  relacional, pidió investigar lo típico y aceptó el resultado: «dejalo en PostgreSQL, me suena
  correcto». Lo da por bueno, no lo recuerda — el matiz importa si alguien reabre el tema.
  Dos vías independientes apuntan al mismo motor: Apple
  opera su **propio servicio interno de PostgreSQL** (sus ofertas de empleo lo describen sosteniendo
  cargas de Services, Manufacturing y AIML, con millones de queries por segundo sobre petabytes;
  MySQL/MariaDB aparecen como «plus» y Oracle en equipos puntuales como Ad Platforms), y
  **Spring WebFlux con persistencia reactiva implica R2DBC**, cuyo driver mejor soportado es
  `r2dbc-postgresql`. Riesgo bajo además porque PostgreSQL ya está respaldado en tres roles más del
  CV, así que es defendible en entrevista. **R2DBC no se nombra**: sería una segunda inferencia
  encadenada sobre la primera.
- El nombre del proyecto, *iTunes — Content Registry Modernization*, es descriptivo, no un codename
  real.

**El summary de USA no menciona el CUL.** Para un reclutador estadounidense esa frase es ruido, y
podría leerse como una señal rara. La frase se mantiene solo en `latam-es/summary-es.tex`, donde el
certificado sí significa algo para quien lo lee.


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

- [x] Bullets de DaCodes, ExSquared y Globant verificados contra el CV en Word (2026-10-21)
- [ ] Probar en Overleaf y verificar layout de 2 páginas
- [x] Versión en español (`resume-es.tex`) — hecha
- [x] Versiones Tech Lead EN/ES (`resume-techlead*.tex`) — hechas 2026-09-22
- [x] Versiones React Native EN/ES (`resume-react-native*.tex`) — hechas
- [x] Versiones extendidas EN/ES (`resume-extended*.tex`) — hechas 2026-10-21
- [ ] Crear versión `resume-targeted.tex` para postulaciones específicas
- [x] Variante **LATAM** conciliada contra el CUL (`resume-latam-es.tex`) — hecha 2026-10-26
- [x] Bullets de Indra/RIMAC y PSS/BanBif — aportados por el candidato 2026-10-26
- [x] WProducciones = LimaW — confirmado y fusionado en una entrada de 10 meses (2026-10-26)
- [x] Alternativa Tecnológica retirada; el tramo lo cubre el bloque freelance (2026-10-26)
- [ ] Ampliar el bloque **Freelance Web Developer** (mar 2015 – jul 2017): clientes, stack, proyectos
- [ ] Fijar la versión de Java de PSS/BanBif (LTS de 2019: Java 8 u 11)
- [ ] Llevar Indra/RIMAC a `LINKEDIN.md` si el variante LATAM se adopta
- [x] Variante **USA** con Apple Inc. (`resume-usa.tex`) — hecha 2026-10-26
- [x] LATAM en español, USA en inglés — hecho 2026-10-26
- [x] **Bullets de Apple Inc.** — aportados por el candidato 2026-10-26 (iTunes, registro de códigos únicos)
- [x] Versión de Java de Apple — **17**, ratificada por el candidato 2026-10-26
- [x] **Servicios de AWS** del proyecto de Apple — RDS, EKS, API Gateway, CloudWatch y Secrets
      Manager, aportados por el candidato 2026-10-26
- [x] **PostgreSQL** en la entrada de Apple — inferido y aceptado por el candidato 2026-10-26
- [ ] Decidir si el solape Apple / Globant se conserva o se secuencia recortando Globant
- [ ] Decidir si las diez variantes anteriores adoptan las fechas del CUL o se congelan
- [x] Bullets de **React Native** (DaCodes, Globant, Bridge Social) — **confirmados por el
      candidato 2026-10-21**. Ver nota abajo: NO volver a cuestionarlos
- [ ] Alinear LinkedIn — texto listo en `LINKEDIN.md`, espejo exacto de la extendida
      (69 bullets en ambos), con checklist de 11 puntos
- [x] Solape Globant / ExSquared resuelto — Globant cierra en feb 2023 (2026-10-21)
- [ ] Integrar link del PDF del Release en el portfolio web (dev-leon-matias-profile)
