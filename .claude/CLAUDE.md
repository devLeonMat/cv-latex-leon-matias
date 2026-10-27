# cv-latex-leon-matias — Claude Context

CV profesional de **Roslin Leon Matias** en LaTeX.
Diseñado para compilar con **XeLaTeX** vía GitHub Actions (CI/CD) y publicar el PDF como Release Asset.

---

## Estructura del proyecto

```
cv-latex-leon-matias/
├── resume-fullstack.tex        # CV Full Stack (EN) — header + \input de secciones
├── resume-fullstack-es.tex     # CV Full Stack (ES)
├── resume-backend-ai.tex       # CV dirigido: Backend + AI Agents (EN)
├── resume-backend-ai-es.tex    # CV dirigido: Backend + Agentes IA (ES)
├── resume-techlead.tex         # CV dirigido: Tech Lead (EN)
├── resume-techlead-es.tex      # CV dirigido: Tech Lead (ES)
├── resume-react-native.tex     # CV dirigido: React Native + Full Stack (EN)
├── resume-react-native-es.tex  # CV dirigido: React Native + Full Stack (ES)
├── resume-extended.tex         # CV extendido (EN) — YA NO SE COMPILA, ver ADR 2026-10-27
├── resume-extended-es.tex      # CV extendido (ES) — YA NO SE COMPILA
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
| ~~Kruger Corp~~ | Senior Full Stack Engineer | **BCP** / Tío Grou | Jul 2020–Dic 2020 |
| Indra | Senior Full Stack Engineer | **RIMAC Seguros** / Póliza Electrónica | Abr 2020–Dic 2020 |
| Michael Page | Full Stack Engineer | Intercorp Retail / Tracking de incidentes | Dic 2019–Jun 2020 |
| Zoluxiones | Full Stack Engineer | SURA Perú / Contrato Digital | Sep 2019–Dic 2019 |
| Experis / Manpower | Senior Java Engineer | Equifax / KATRINA | Jul 2018–Sep 2019 |
| Olva Courier | Java Developer | ERP Olva Corp | Mar 2015–Jun 2018 |
| LimaW | Java Developer | Biometría Zircon | Ene 2014–Feb 2015 |

**Correcciones sobre lo que decía este documento antes:**
- **BCP fue cliente de Kruger Corp, no de INDRA.** Eso sigue siendo cierto como hecho, pero
  **desde el 2026-10-27 Kruger ya no figura en ninguna variante compilada** y BCP se fue con
  ella: la conciliación contra el CUL deja a Indra en esa ventana (abr–dic 2020, 9 meses) y
  Kruger cae entera dentro de Indra (4 m 23 d). Ver el ADR del 2026-10-27 más abajo.
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
| `resume-fullstack.tex` | **Senior Full Stack Engineer** · Angular · React · Java · Node.js | EN | `sections/` | — |
| `resume-fullstack-es.tex` | **Ingeniero Full Stack Senior** · Angular · React · Java · Node.js | ES | `es/` | — |
| `resume-backend-ai.tex` | Senior Backend Engineer · Java · Node.js · **Python** · AI Agents | EN | `backend-ai/` | `sections/` |
| `resume-backend-ai-es.tex` | Ingeniero Backend Senior · Java · Node.js · **Python** · Agentes IA | ES | `backend-ai-es/` | `es/` |
| `resume-techlead.tex` | **Tech Lead** | EN | `techlead/` | `sections/` |
| `resume-techlead-es.tex` | **Tech Lead** | ES | `techlead-es/` | `es/` |
| `resume-react-native.tex` | **Senior React Native Engineer** · Mobile | EN | `react-native/` | `sections/` |
| `resume-react-native-es.tex` | **Ingeniero React Native Senior** · Móvil | ES | `react-native-es/` | `es/` |
| ~~`resume-extended.tex`~~ | **Extendido** (11 roles) — *fuera de la generación* | EN | `extended/` | `sections/languages` |
| ~~`resume-extended-es.tex`~~ | **Extendido** (11 roles) — *fuera de la generación* | ES | `extended-es/` | `es/languages-es` |
| `resume-latam-es.tex` | **LATAM · EXTENDIDO** — historial conciliado contra el CUL + **Apple Inc.** (13 roles) | ES | `latam-es/` | `extended-es/{education,certifications}-es` + `es/languages-es` |
| `resume-usa.tex` | **USA · EXTENDED** — conciliado + **Apple Inc.** (13 roles) | EN | `usa/` | `extended/{education,certifications}` + `sections/languages` |

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
(y el 2026-10-27 se renombraron a `resume-fullstack*.tex`)
(Angular, React, Java, Node.js). En la variante backend, **Python** entra al título con una línea
propia en skills, acotada a lo que realmente cubre (serverless en Lambda, procesamiento
documental, tareas programadas, tooling interno); el ángulo de agentes IA baja del slot de
"Cloud Native" pero se mantiene. La variante React Native se titula como rol React Native en
lugar de full stack genérico. Tech Lead y las extendidas no se tocaron.

`sections/{summary,skills,experience}.tex` y `es/*` los usa **solo** la variante Full Stack — editarlos
no afecta a las otras variantes, que tienen sus propios directorios.

**Claims sin respaldo eliminados**: `HIPAA`, `LangChain` y los bullets de React Native dentro de
la variante backend. `RIMAC` también estuvo en esa lista, y **salió de ella el 2026-10-27**: al
entrar Indra a las ocho condensadas, RIMAC vuelve a tener respaldo y figura como su cliente. La
condición que fijaba el ADR —«para recuperarlo hay que devolver INDRA, no listar el cliente
suelto»— se cumplió.

**React Native: confirmado, no cuestionar** (2026-10-21). El candidato confirmó explícitamente
que puede defender los bullets de React Native en **DaCodes**, **Globant** y **The Bridge
Social**. El CV en Word está **incompleto** en ese punto: describe esos roles como React 18,
Angular 12 y ReactJS, pero la experiencia React Native es real. Los bullets se mantienen en las
variantes **react-native** y **extendida**, que son las que lo usan. Están fuera de la variante
**backend** (no por veracidad: el trabajo de UI móvil está fuera del enfoque de ese CV) y también
fuera de las variantes **general/Full Stack** y **Tech Lead**, que nunca los tuvieron.
No reabrir este tema ni "corregirlo" contra el Word. El resumen ES
de backend describía AgentCloud como plataforma de agentes IA con LLMs; es un SaaS de seguros de
salud. RIMAC era el proyecto de INDRA: la regla de «no listar el cliente suelto» se respetó
devolviendo Indra misma a las ocho condensadas el 2026-10-27.

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

**El hueco mar 2015 – jul 2017 se deja abierto a propósito** (decisión del candidato, 2026-10-26).
Existió un bloque *Freelance Web Developer* que cubría esa ventana — incluida la franja donde estaba
Alternativa — con un solo bullet genérico. Le pedí clientes, stack y algún proyecto nombrable para
poder ampliarlo; eligió **retirar el bloque y sustentar los 2 a 5 m en la entrevista**: estaba
cerrando la carrera de Ingeniería de Sistemas en la UNAC.

La decisión es coherente con el resto del documento. `extended/education.tex` y
`extended-es/education-es.tex` traen **2012 – 2018**, que abarca la ventana completa, así que el CV
respalda esa respuesta sin afirmar trabajo que no puede evidenciar. Un bloque de 29 meses con un
bullet vacío se lee como relleno para tapar un hueco, que es justo la lectura que el hueco declarado
evita.

**No rellenar esta ventana con freelance inventado.** Si el candidato aporta clientes y stack
reales, el bloque vuelve; sin eso, se queda abierta.

Consecuencia aritmética: el historial arranca en **may 2014**, no en ene 2014; **abarca 12 a 6 m**
hasta oct 2026 pero las entradas dan cuenta de unos **10 a 1 m**. Los dos números son distintos y
no son intercambiables: **nunca escribir «12+ años de experiencia»** en estos dos variantes — ese es
el lapso, no el trabajo registrado. El resto son traspasos de uno o dos meses entre contratos.

**Contenido aportado por el candidato** (2026-10-26):

- **Indra / RIMAC** — desarrollo de nuevos productos, entre ellos Póliza Electrónica. Capa de datos
  completa en **Oracle / PL/SQL** (procedures, packages, vistas, modelo), servicios **serverless** en
  **AWS Lambda** con **Node.js**, **S3** para documentos, y front end en **React**. Rol puesto como
  Senior Full Stack Engineer; el título exacto sigue sin confirmar.
- **PSS Perú / BanBif** — nuevos productos de ahorro: **Ahorro Programado** y **Ahorro Automático**.
  **Java** con **Spring Boot**, servicios **REST** y **SOAP**, módulos legados en **JSP / JSTL**, y
  front end en **Angular** con **Angular Material**. **Java 11**, confirmado por el candidato el
  2026-10-27: la 11 salió en sep 2018 y era la LTS vigente en abr – jul 2019, así que la fecha
  respalda el dato. Ya figuraba en la línea de lenguajes de skills; ahora tiene un rol que la
  sostiene.

**Claims agregados a `latam/skills.tex`** con ese contenido: **PL/SQL** (Indra), **JSP / JSTL**
(PSS y LimaW) y **PrimeFaces** (Olva — ya estaba en los bullets pero nunca se listó en skills).

**Sin pendientes de contenido.** El único que quedaba era el bloque freelance, retirado el
2026-10-26 por la decisión de arriba.

Por el ADR de LinkedIn, al entrar Indra al CV debe entrar también a `LINKEDIN.md`, y RIMAC con ella.

### Separación por idioma y mercado (2026-10-26)

Decisión del candidato: **LATAM va en español, USA va en inglés**. Apple entraba solo en la de USA;
desde el 2026-10-27 va en las dos y en las ocho condensadas (ver el ADR del 2026-10-27 más abajo).

| | Idioma | Roles | Apple |
|---|--------|-------|-------|
| `resume-latam-es.tex` | español | 13 | **sí** (desde 2026-10-27) |
| `resume-usa.tex` | inglés | 13 | **sí** |

Los dos comparten la misma conciliación; `latam-es/` es espejo de `usa/`, Apple incluido. Las
traducciones de los diez roles que ya existían se tomaron de `extended-es/experience-es.tex` para no
retraducir y mantener la voz del repo; solo Indra y PSS se escribieron nuevos en español (el bloque
freelance también, pero se retiró después).

**Apple rompe la propiedad de cero solapes, a propósito.** El CUL registra Caleidos Media
17/10/2022 – 31/03/2023 **en paralelo** con Globant Perú 22/06/2022 – 19/06/2023. Los dos son reales
y los dos están documentados, así que `usa/experience.tex` conserva las fechas del certificado en
lugar de recortar una para fingir una secuencia limpia. Es el único solape del CV: en el documento
queda como **oct 2022 – feb 2023, cinco meses**.

**Resuelto el 2026-10-27: declarado, no recortado.** Decisión del candidato, sobre dos datos que él
aportó: Globant era la **jornada principal** y Caleidos un **encargo por proyecto**.

- **No se recorta Globant** a oct 2022. Lo dejaría en 4 meses, que se lee como paso corto, y Apple
  es la línea de más valor del CV. Nótese que el argumento «recortar inventa fechas» no aplica acá:
  este documento ya recorta Globant de jun 2023 a feb 2023 por decisión del 2026-10-21.
- **No se deja crudo.** Un solape sin explicar parece error de tipeo, y ante un lector
  estadounidense dos jornadas completas en paralelo levantan la pregunta de doble empleo — más con
  Apple, que tiene política estricta.
- **Cómo queda**: el último bullet de la entrada dice «delivered as a **project-based engagement**
  through Caleidos Media». Quien note el solape encuentra la respuesta en la misma entrada, sin
  línea extra ni riesgo de desborde.
- **Lo que el CV NO dice**: que corría junto a otro contrato. Nombrar el doble empleo es el flag que
  se quiere evitar; el tipo de encargo alcanza. Si preguntan en entrevista, ahí se explica.

La alternativa descartada era cerrar Globant en oct 2022 (4 m en vez de 8 m) y correr Apple hasta
mar 2023.

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
  Apple. Entraron a `latam-es/skills-es.tex` el 2026-10-27, cuando Apple entró a ese variante.
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


---

## ADR — Nombres por rol y retiro de las extendidas (2026-10-27)

**`resume.tex` → `resume-fullstack.tex`, `resume-es.tex` → `resume-fullstack-es.tex`.** Decisión del
candidato. El ADR del 2026-10-21 ya había convertido al antiguo CV «general» en la variante Full
Stack, pero el nombre del archivo —y por lo tanto el del PDF que baja un reclutador— seguía diciendo
`resume.pdf`, sin rol. Ahora las doce raíces nombran su variante. La tabla del Release también dejó
de decir «General»: dice «Full Stack · Angular · React · Java · Node.js».

Lo que se tocó: los dos `.tex` raíz (`git mv` + su propio encabezado), `@default_files` en
`.latexmkrc`, `MAIN` y `MAIN_ES` en el `Makefile`, y en el workflow los dos pasos de compilación, los
dos `upload-artifact`, las dos filas de la tabla del Release y la lista `artifacts:`. Los directorios
`sections/` y `es/` **no** se renombraron: los reutilizan backend-ai, techlead y react-native.

Los targets del `Makefile` siguen siendo `make en` / `make es`. Son genéricos para un repo donde cada
variante tiene las dos lenguas, pero renombrarlos rompería la costumbre sin ganar nada hoy.

**Las dos variantes extendidas salen de la generación.** Decisión del candidato: *el conciliado
completo reemplaza al extendido*. `resume-extended.tex` y `resume-extended-es.tex` ya no se compilan
ni se publican en el Release, y `make all-versions` no los incluye. Se compilan **diez** PDFs.

Las conciliadas los reemplazan de hecho: cubren el mismo historial completo con fechas que calzan
contra el Certificado Único Laboral, que es más de lo que la extendida podía defender.

**Los archivos raíz y los directorios `extended/` y `extended-es/` se quedan**, por dos razones:

1. **`resume-usa.tex` y `resume-latam-es.tex` dependen de ellos.** USA hace `\input{extended/education}`
   y `\input{extended/certifications}`; LATAM hace lo mismo con `extended-es/`. Borrar esos
   directorios rompe las dos variantes que sí se publican. Si alguna vez se quieren limpiar, primero
   hay que mover esos cuatro archivos a `usa/` y `latam-es/`.
2. **`make extended` sigue funcionando en local**, que es útil mientras `LINKEDIN.md` siga siendo
   espejo de la extendida.

**Consecuencia pendiente sobre LinkedIn.** El ADR del 2026-10-22 fija `LINKEDIN.md` como espejo del
CV extendido. Al retirarse la extendida, ese espejo apunta a un documento que ya no se genera.
`LINKEDIN.md` debería regenerarse desde `usa/experience.tex`, que trae las fechas conciliadas, Indra
y Apple. No se hizo en este cambio: es trabajo de contenido, no de renombrado.

---

## ADR — Indra reemplaza a Kruger en las ocho condensadas (2026-10-27)

Decisión del candidato: **las ocho condensadas adoptan la conciliación del CUL en esa ventana**,
igual que LATAM y USA. Antes cada idioma decía una cosa distinta, y las dos eran incompatibles:

| | Decía antes | Dice ahora |
|---|---|---|
| Las cuatro EN | `INDRA \| Clients: BCP, RIMAC` | `Indra \| Client: RIMAC Seguros` |
| Las cuatro ES | `Kruger Corp \| Cliente: BCP` | `Indra \| Cliente: RIMAC Seguros` |

La versión EN era la peor de las dos: atribuía **BCP a Indra**, que es justo el error que el ADR
del 2026-10-21 había corregido (BCP fue cliente de Kruger; RIMAC, de Indra). Las ES tenían el
hecho bien pero el rol equivocado según el CUL.

**BCP sale de estas ocho variantes**, porque su único respaldo era Kruger. Se retiró de donde
figuraba como cliente: los *Logros Destacados* de `sections/`, `es/`, `react-native/`,
`react-native-es/`, `backend-ai/` y `backend-ai-es/`, y los resúmenes de `techlead/`,
`techlead-es/`, `backend-ai/` y `backend-ai-es/`. En su lugar va **RIMAC**, que es lo que la
entrada nueva respalda. `sections/` listaba los dos: se quedó con RIMAC.

Esto alinea los diez documentos en una sola versión del historial. Queda una sola discrepancia
conocida: `extended/` y `extended-es/` siguen con Kruger, y con ellas `LINKEDIN.md`, que es su
espejo. No se tocaron porque ya no se compilan; el pendiente de regenerar `LINKEDIN.md` desde
`usa/experience.tex` cubre ese caso.

**Las variantes condensadas no llevan bullets de Indra**, solo el `\cvMiniEntry`, así que no
heredan los claims que la entrada completa sí sostiene (`PL/SQL`, Lambda con Node.js, S3). Sus
archivos de skills no los listaban y se dejaron como estaban: ninguno quedó huérfano al salir
Kruger — verificado que `PWA`, `WhatsApp Business API`, `Retrofit` y `Angular 10`, que en LATAM
hubo que retirar por esto mismo, nunca estuvieron en estas ocho.

---

## ADR — Apple Inc. en todas las variantes (2026-10-27)

Decisión del candidato: **el encargo de Apple fue temporal y concurrente**, así que no compite con
Globant y vale en los doce documentos, no solo en el de USA.

| Dónde | Cómo figura |
|-------|-------------|
| `usa/experience.tex` | Entrada completa con bullets y stack (ya estaba) |
| `latam-es/experience-es.tex` | Entrada completa, traducida — **nueva**, bloque 4 de 13 |
| Las ocho condensadas (EN) | `\cvMiniEntry` en *Additional Experience*, con fechas (ya estaba) |
| Las ocho condensadas (ES) | `\cvMiniEntry` en *Experiencia Adicional*, con fechas — **nuevo** |

El mini-entry de Apple es el único de esa sección que lleva fechas: sin ellas, un lector asume que
va en la secuencia y el solape con Globant se lee como error.

**El solape con Globant se conserva en todas partes, declarado como encargo por proyecto.** La
decisión y su razonamiento están en el ADR del CUL, más arriba: Globant era la jornada principal,
Caleidos un encargo por proyecto, y el último bullet de la entrada lo dice sin nombrar el doble
empleo. Al entrar Apple a las doce variantes, esa misma redacción viaja con ella: la entrada
completa de `latam-es/` repite el bullet («encargo por proyecto»), y las ocho condensadas no
necesitan más que las fechas, porque no describen el rol.

También entró Apple a la lista de clientes de los *Logros Destacados* de `es/`, `backend-ai-es/`,
`react-native-es/`, `backend-ai/` y `react-native/`; `sections/` ya la tenía. Las dos Tech Lead no
listan clientes en sus logros, así que ahí solo va el mini-entry.

**`latam-es/skills-es.tex` recibió `API Gateway` y `Secrets Manager`**, cuyo único respaldo es
Apple. Eso revierte la exclusión del 2026-10-26, que se justificaba únicamente en que Apple no
figuraba en ese variante.

Las decisiones de contenido de la entrada (Java 17, React 18, Spring Boot sin versión, los cinco
servicios de AWS, PostgreSQL inferido, SonarQube) siguen documentadas en `usa/experience.tex` y
**no se reabren**; `latam-es/` apunta allí en lugar de duplicar el razonamiento.

## ADR — Las conciliadas se declaran extendidas (2026-10-27)

Decisión del candidato: **las dos conciliadas dicen en el documento que son la versión
extendida**. Reemplazaron a `resume-extended*.tex` el 2026-10-27, así que el lector tiene que ver
de entrada que está ante el historial completo y no ante una condensada que se fue de largo a
4 páginas.

Implementación: comando nuevo `\cvVariantTag{...}` en `styles/resume.sty`, una línea en negrita y
color de acento bajo el bloque de contacto. Texto:

- `resume-latam-es.tex` → «CV EXTENDIDO — historial laboral completo, conciliado contra el
  Certificado Único Laboral (MTPE, 2026)»
- `resume-usa.tex` → «EXTENDED CV — complete career history, reconciled against official Peruvian
  payroll records (MTPE, 2026)»

El texto de USA **no nombra el CUL**: para un reclutador estadounidense esa sigla no significa
nada. Dice «official Peruvian payroll records», que es lo mismo en términos que sí se entienden.
Es la misma razón por la que el summary de USA no lo menciona.

La etiqueta también entró a los nombres de los pasos del workflow y a la tabla del Release, que
ahora dicen **LATAM · EXTENDIDO** y **USA · EXTENDED**.

**Corregido de paso**: `resume-latam-es.tex` conservaba un `\pagestyle{empty}` después de
`\begin{document}`, que pisaba el `\pagestyle{fancy}` del `\AtBeginDocument` de la hoja de
estilos — ese documento era el único de los diez sin el pie «Updated: …» que el commit `ddb5054`
había puesto en todas las variantes. Se eliminó la línea.

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

- [x] Bullets de DaCodes, ExSquared y Globant verificados contra el CV en Word (2026-10-21)
- [ ] Probar en Overleaf y verificar layout de 2 páginas
- [x] Versión en español (`resume-fullstack-es.tex`) — hecha
- [x] Versiones Tech Lead EN/ES (`resume-techlead*.tex`) — hechas 2026-09-22
- [x] Versiones React Native EN/ES (`resume-react-native*.tex`) — hechas
- [x] Versiones extendidas EN/ES (`resume-extended*.tex`) — hechas 2026-10-21; **retiradas de la
      generación el 2026-10-27**, reemplazadas por las conciliadas
- [ ] Crear versión `resume-targeted.tex` para postulaciones específicas
- [x] Variante **LATAM** conciliada contra el CUL (`resume-latam-es.tex`) — hecha 2026-10-26
- [x] Bullets de Indra/RIMAC y PSS/BanBif — aportados por el candidato 2026-10-26
- [x] WProducciones = LimaW — confirmado y fusionado en una entrada de 10 meses (2026-10-26)
- [x] Alternativa Tecnológica retirada (2026-10-26); el tramo queda como hueco declarado
- [x] Bloque **Freelance Web Developer** — **retirado** 2026-10-26. El hueco mar 2015 – jul 2017
      queda abierto y el candidato lo sustenta con el cierre de la carrera en la UNAC
- [x] Java de PSS/BanBif — **Java 11**, confirmado por el candidato 2026-10-27
- [ ] Llevar Indra/RIMAC a `LINKEDIN.md` si el variante LATAM se adopta
- [x] Variante **USA** con Apple Inc. (`resume-usa.tex`) — hecha 2026-10-26
- [x] LATAM en español, USA en inglés — hecho 2026-10-26
- [x] **Bullets de Apple Inc.** — aportados por el candidato 2026-10-26 (iTunes, registro de códigos únicos)
- [x] Versión de Java de Apple — **17**, ratificada por el candidato 2026-10-26
- [x] **Servicios de AWS** del proyecto de Apple — RDS, EKS, API Gateway, CloudWatch y Secrets
      Manager, aportados por el candidato 2026-10-26
- [x] **PostgreSQL** en la entrada de Apple — inferido y aceptado por el candidato 2026-10-26
- [x] Solape Apple / Globant — **declarado, no recortado** (2026-10-27). Caleidos fue encargo
      por proyecto; el último bullet de la entrada lo dice. Vale en las doce variantes desde que
      Apple entró a todas
- [ ] Decidir si las diez variantes anteriores adoptan las fechas del CUL o se congelan
- [x] Bullets de **React Native** (DaCodes, Globant, Bridge Social) — **confirmados por el
      candidato 2026-10-21**. Ver nota abajo: NO volver a cuestionarlos
- [ ] **Regenerar `LINKEDIN.md` desde la variante USA**, no desde la extendida: el ADR de
      LinkedIn la fijaba como espejo de la extendida, que ya no se compila (2026-10-27)
- [x] Solape Globant / ExSquared resuelto — Globant cierra en feb 2023 (2026-10-21)
- [x] **INDRA vs Kruger en las ocho condensadas** — alineadas a **Indra / RIMAC** el
      2026-10-27, con BCP retirado de esas variantes
- [ ] Integrar link del PDF del Release en el portfolio web (dev-leon-matias-profile)
